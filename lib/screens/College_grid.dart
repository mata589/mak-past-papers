import 'package:mak_past_papers/screens/courses.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mak_past_papers/data/data.dart';

class CollegeGrid extends StatelessWidget {
  CollegeGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: College.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          var college = College[index];
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(College[index].backImage),
                  fit: BoxFit.fill),
            ),
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          college.collegename,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          College[index].imageUrl,
                          height: 110,
                        )
                      ],
                    )
                  ],
                ),
              ),
              onTap: College[index].Courses.length == 0
                  ? () {}
                  : () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => courseunits(
                                collegename: college.collegename,
                                courses: college.Courses,
                                coursemap: college.courseunits,
                              )));

                      print('<<<<<' + college.courseunits.toString() + '>>>>');
                    },
            ),
          );
        });
  }
}
