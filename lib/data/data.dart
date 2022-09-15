import 'package:flutter/material.dart';
import 'package:mak_past_papers/constant.dart';
import 'package:mak_past_papers/model/Course_modal.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../model/College_model.dart';


final List<college> College = [
  college(
      collegename: "CEES",
      lessons: "35 Lessons",
      imageUrl: "images/pic/img1.png",
      percent: 75,
      backImage: "images/box/box1.png",
      color: kDarkBlue),
  college(
      collegename: "COCIS",
      lessons: "30 Lessons",
      imageUrl: "images/pic/img2.png",
      percent: 50,
      backImage: "images/box/box2.png",
      color: kOrange),
  college(
      collegename: "CEDAT",
      lessons: "20 Lessons",
      imageUrl: "images/pic/img3.png",
      percent: 25,
      backImage: "images/box/box3.png",
      color: kGreen),
  college(
      collegename: "CHS",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kYellow),
  college(
      collegename: "CHUSS",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kDarkBlue),
  college(
      collegename: "CONAS",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kOrange),
  college(
      collegename: "CAES",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kGreen),
  college(
      collegename: "COBAMS",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kYellow),
  college(
      collegename: "COVAB",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kDarkBlue),
  college(
      collegename: "LAW",
      lessons: "40 Lessons",
      imageUrl: "images/pic/img4.png",
      percent: 75,
      backImage: "images/box/box4.png",
      color: kOrange),
];
final List<course> courses = [
  course(
      text: "CEES",
      lessons: "35 Lessons",
      imageUrl: "images/pic/img1.png",
      percent: 75,
      backImage: "images/box/box1.png",
      color: kDarkBlue,
      coursename: "TEST COURSE NAME1"),
  course(
      text: "CEES",
      lessons: "35 Lessons",
      imageUrl: "images/pic/img1.png",
      percent: 75,
      backImage: "images/box/box1.png",
      color: kDarkBlue,
      coursename: "TEST COURSE NAME2"),
  course(
      text: "CEES",
      lessons: "35 Lessons",
      imageUrl: "images/pic/img1.png",
      percent: 75,
      backImage: "images/box/box1.png",
      color: kDarkBlue,
      coursename: "TEST COURSE NAME3"),
];
