import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mak_past_papers/data/viewpdf.dart';


class MyCustomUI extends StatefulWidget {
  @override
  _MyCustomUIState createState() => _MyCustomUIState();
}

class _MyCustomUIState extends State<MyCustomUI>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Future<ListResult> futureFiles;
   
  
  

  FilePickerResult? result;
var storage = FirebaseStorage.instance;
  @override
  void initState() {
    super.initState();
 futureFiles=  FirebaseStorage.instance.ref('COCIS/computer science').listAll();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
          ..addListener(() {
            setState(() {});
          });

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
    return Scaffold(
      //searchBar(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0), // here the desired height
          child:SafeArea(child: AppBar(
             backgroundColor: Color(0xffF5F5F5),
             automaticallyImplyLeading: false,
             flexibleSpace:searchBar() ,
        //   actions: [
            
        //   searchBar()
        
        // ]
            // ...
          ))
        ),
      //  AppBar(
        
      //    backgroundColor: Color(0xffF5F5F5),
      //     actions: [
      //     searchBar()
        
      //  ]),
     
      body:FutureBuilder<ListResult>(
        future:futureFiles ,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            final files = snapshot.data!.items;
            return ListView.builder(
              itemCount: files.length,
               itemBuilder: (context,index){
               var file = files[index];
               var url = files[index].getDownloadURL();
               return ListTile(
                title: Text(file.name),
                trailing: Text('2022'),
                onTap: () {
                  Navigator.push(
                        
                            context,
                            MaterialPageRoute(
                                builder: (context) =>   
                                viewpdf(pdfurl: url,
                                  
                                    )));
                },
               );
               }
               
               );
          }
          else if(snapshot.hasError){
                  return const Center(child: Text('error'),);
                }else{
                  return const Center(child: CircularProgressIndicator(),);
                }
          
        }
        
        ) 
      
        );
  }

  Widget uploadIcon() {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, _w / 20, _w / 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: _w / 8.5,
            width: _w / 8.5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 30,
                  offset: Offset(0, 15),
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              tooltip: 'upload past paper',
              icon: Icon(Icons.add,
                  size: _w / 17, color: Colors.black.withOpacity(.6)),
              onPressed: () {
                uploadpaper();


                
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBar() {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, _w / 25, _w / 20, _w / 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: _w / 8.5,
            width: _w / 1.36,
            padding: EdgeInsets.symmetric(horizontal: _w / 60),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(99),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 30,
                  offset: Offset(0, 15),
                ),
              ],
            ),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontWeight: FontWeight.w600,
                    fontSize: _w / 22),
                prefixIcon:
                    Icon(Icons.search, color: Colors.black.withOpacity(.6)),
                hintText: 'Search anypaper.....',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          SizedBox(height: _w / 14),
          Container(
            width: _w / 1.15,
            child: Text(
              'COMPUTER SCIENCE PAST PAPERS',
              textScaleFactor: 1.1,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(.7),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget groupOfCards(
      String title1,
      String subtitle1,
      String image1,
      Widget route1,
      String title2,
      String subtitle2,
      String image2,
      Widget route2) {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          card(title1, subtitle1, image1, route1),
          card(title2, subtitle2, image2, route2),
        ],
      ),
    );
  }

  Widget card(String title, String subtitle, String image, Widget route) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          //Navigator.of(context).push(MyFadeRoute(route: route, page: 4));
        },
        child: Container(
          width: _w / 2.36,
          height: _w / 1.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 50),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: _w / 2.36,
                height: _w / 2.6,
                decoration: BoxDecoration(
                  color: Color(0xff5C71F3),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Add image here',
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
              ),
             
              Container(
                height: _w / 6,
                width: _w / 2.36,
                padding: EdgeInsets.symmetric(horizontal: _w / 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textScaleFactor: 1.4,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      subtitle,
                      textScaleFactor: 1,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(.7),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Future<void> uploadpaper() async {

 result = (await FilePicker.platform.pickFiles(withReadStream: true, allowMultiple: true, type: FileType.any));
String fileName = result!.files.single.name;
String? pathh = result!.files.single.path;
savePdf(pathh!, fileName);

}

  Future<void> savePdf(String filepath, String fileName) async {
    File file = File(filepath);
    try{
//final reference = FirebaseStorage.instance.ref('COCIS/computer science/$fileName');
//final uploadTask = reference.putFile(file);
//String url =  await (await uploadTask).ref.getDownloadURL();
UploadTask uploadTask = (await storage.ref('COCIS/computer science/$fileName').putFile(file)) as UploadTask;
   String url = await (await uploadTask).ref.getDownloadURL();


print(url);
  } catch (e){

    print(e);
  }


  }}


class MyFadeRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;

  MyFadeRoute({required this.page, required this.route})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black.withOpacity(.8),
          ),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
    );
  }
}