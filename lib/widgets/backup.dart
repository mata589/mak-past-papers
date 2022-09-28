import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mak_past_papers/data/data.dart';
import 'package:mak_past_papers/screens/courseunits.dart';
import 'package:mak_past_papers/model/College_model.dart';
import 'package:mak_past_papers/model/college_model.dart';

class courseunits extends StatefulWidget {
  courseunits(
      {required this.collegename,
      required this.courses,
      required this.coursemap});

  final String collegename;
  final List<String> courses;
  final Map coursemap;

  @override
  _courseunitsState createState() => _courseunitsState();
}

class _courseunitsState extends State<courseunits>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: 0, end: -30)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    String string = widget.collegename;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF57752),
        brightness: Brightness.dark,
        elevation: 0,
        title: Text(string),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: widget.courses.length,
              itemBuilder: (context, index) {
                return myCard(widget.courses[index]);
              }),

          // top me rahna
          CustomPaint(
            painter: MyPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }

  List<String> mapcourse(String course, Map coursemap) {
    var listunits;

    if (course == coursemap.keys) {
      listunits = coursemap.values.toList();
    }

    return listunits;
  }

  Widget myCard(String name) {
    double _w = MediaQuery.of(context).size.width;
    List<String>? list = mapcourse(name, widget.coursemap);
    return Opacity(
      opacity: _animation.value,
      child: Transform.translate(
        offset: Offset(0, _animation2.value),
        child: InkWell(
          enableFeedback: true,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => course_units(
                    course: name,
                    units: list, college: widget.collegename,
                  ),
                ));
          },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Container(
            margin: EdgeInsets.fromLTRB(_w / 20, _w / 20, _w / 20, 0),
            padding: EdgeInsets.all(_w / 20),
            height: _w / 4.4,
            width: _w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffEDECEA),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue.withOpacity(.1),
                  radius: _w / 15,
                  child: FlutterLogo(size: 30),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  width: _w / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        textScaleFactor: 1.0,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.navigate_next_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_1 = Paint()
      ..color = Color(0xffF57752)
      ..style = PaintingStyle.fill;

    Path path_1 = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * .1, 0)
      ..cubicTo(size.width * .05, 0, 0, 20, 0, size.width * .08);

    Path path_2 = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width * .9, 0)
      ..cubicTo(
          size.width * .95, 0, size.width, 20, size.width, size.width * .08);

    Paint paint_2 = Paint()
      ..color = Color(0xffF57752)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    Path path_3 = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0);

    canvas.drawPath(path_1, paint_1);
    canvas.drawPath(path_2, paint_1);
    canvas.drawPath(path_3, paint_2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RouteWhereYouGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text('EXAMPLE  PAGE',
            style: TextStyle(
                color: Colors.black.withOpacity(.7),
                fontWeight: FontWeight.w600,
                letterSpacing: 1)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black.withOpacity(.8)),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
    );
  }
}
