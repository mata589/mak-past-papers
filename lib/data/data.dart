import 'package:flutter/material.dart';
import 'package:mak_past_papers/constant.dart';
import 'package:mak_past_papers/model/college_model.dart';

import 'package:mak_past_papers/screens/courseunits.dart';
import 'package:ternav_icons/ternav_icons.dart';

final List<college> College = [
  college(
    collegename: "CEES",
    imageUrl: "images/pic/img1.png",
    backImage: "images/box/box1.png",
    color: kDarkBlue,
    Courses: ['es', 'GDH'],
    courseunits: {'es': 'bulshit'},
  ),
  college(
    collegename: "COCIS",
    imageUrl: "images/pic/img2.png",
    backImage: "images/box/box2.png",
    color: kOrange,
    Courses: ['BIST', 'BSSE', 'BCSC'],
    courseunits: {
      'BIST': ['OPERATING SYSTEMS', 'SAD', 'DIM'],
      'BSSE': ['NAD', 'PAD', 'DAD', 'RAD'],
      'BCSC': ['AUTOMATA', '']
    },
  ),
  college(
    collegename: "CEDAT",
    imageUrl: "images/pic/img3.png",
    backImage: "images/box/box3.png",
    color: kGreen,
    Courses: ['CIVIL', 'ELECTRICAL'],
    courseunits: {
      'CIVIL': ['AUTO CAD', 'PRE1']
    },
  ),
  college(
    collegename: "CHS",
    imageUrl: "images/pic/img4.png",
    backImage: "images/box/box4.png",
    color: kYellow,
    Courses: ['kk'],
    courseunits: {'kk': 'mm'},
  ),
  college(
    collegename: "CHUSS",
    imageUrl: "images/pic/img4.png",
    backImage: "images/box/box4.png",
    color: kDarkBlue,
    Courses: ['wert'],
    courseunits: {'wert': 'gh'},
  ),
  college(
      collegename: "CONAS",
      imageUrl: "images/pic/img4.png",
      backImage: "images/box/box4.png",
      color: kOrange,
      Courses: ['poi'],
      courseunits: {'poi': 'jkl'}),
  college(
    collegename: "CAES",
    imageUrl: "images/pic/img4.png",
    backImage: "images/box/box4.png",
    color: kGreen,
    Courses: ['yut'],
    courseunits: {'yut': 'oiu'},
  ),
  college(
    collegename: "COBAMS",
    imageUrl: "images/pic/img4.png",
    backImage: "images/box/box4.png",
    color: kYellow,
    Courses: ['ejdj'],
    courseunits: {'ejdj': 'de'},
  ),
  college(
    collegename: "COVAB",
    imageUrl: "images/pic/img4.png",
    backImage: "images/box/box4.png",
    color: kDarkBlue,
    Courses: ['fgt'],
    courseunits: {'fgt': 'fg'},
  ),
  college(
    collegename: "LAW",
    imageUrl: "images/pic/img4.png",
    backImage: "images/box/box4.png",
    color: kOrange,
    Courses: ['kl'],
    courseunits: {'kl': 'hjl'},
  ),
];
