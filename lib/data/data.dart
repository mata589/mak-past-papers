
import 'package:flutter/material.dart';
import 'package:mak_past_papers/constant.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../model/course_model.dart';
import '../model/planing_model.dart';
import '../model/statistics_model.dart';

final List<Course> course = [
  Course(
      text: "CEES",
      lessons: "35 Lessons",
      imageUrl: "images/pic/img1.png",
      percent: 75,
      backImage: "images/box/box1.png",
      color: kDarkBlue),
  Course(
      text: "COCIS",
      lessons: "30 Lessons",
      imageUrl: "images/pic/img2.png",
      percent: 50,
      backImage: "images/box/box2.png",
      color: kOrange),
  Course(
      text: "CEDAT",
      lessons: "20 Lessons",
      imageUrl: "images/pic/img3.png",
      percent: 25,
      backImage: "images/box/box3.png",
      color: kGreen),
  Course(
      text: "CHS",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kYellow),
      Course(
      text: "CHUSS",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kDarkBlue),
      Course(
      text: "CONAS",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kOrange),
      Course(
      text: "CAES",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kGreen),
      Course(
      text: "COBAMS",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kYellow),
      Course(
      text: "COVAB",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kDarkBlue),
      Course(
      text: "LAW",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kOrange),
];

final List<Planing> planing = [
  Planing(
    heading: "Reading-Begineer Toipc 1",
    subHeading: "8:00 AM - 10:00 AM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
  Planing(
    heading: "Listening - Intermediate Topic 1",
    subHeading: "03:00 PM - 04:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Speaking - Beginner Topic 1",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Grammar - Intermediate Topic 2",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Listening - Intermediate Topic 1",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "Grammar - Intermediate Topic 2",
    subHeading: "8:00 AM - 12:00 PM",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Speaking - Beginner Topic 1",
    subHeading: "07:00 PM - 08:00 PM",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.volume_low, color: kYellow),
  ),
  Planing(
    heading: "Reading-Begineer Toipc 1",
    subHeading: "01:00 PM - 02:00 PM",
    color: kLightBlue,
    icon: const Icon(
      Icons.menu_book_outlined,
      color: kDarkBlue,
    ),
  ),
];

final List<Statistics> statistics = [
  Statistics(
    title: "Course Completed",
    number: "02",
  ),
  Statistics(
    title: "Total Points Gained",
    number: "250",
  ),
  Statistics(
    title: "Course In Progress ",
    number: "03",
  ),
  Statistics(
    title: "Tasks \nFinished",
    number: "05",
  )
];