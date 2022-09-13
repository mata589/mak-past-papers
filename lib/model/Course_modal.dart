import 'dart:ui';
import 'package:mak_past_papers/model/College_model.dart';

import '../model/College_model.dart';

class course extends college {
  final String coursename;

  course({
    required String text,
    required String lessons,
    required String imageUrl,
    required double percent,
    required String backImage,
    required Color color,
    required this.coursename,
  }) : super(
            collegename: text,
            lessons: lessons,
            imageUrl: imageUrl,
            percent: percent,
            backImage: backImage,
            color: color);
}
