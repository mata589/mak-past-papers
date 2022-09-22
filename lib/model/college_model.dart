import 'dart:ui';

import 'package:mak_past_papers/screens/courseunits.dart';
import 'package:mak_past_papers/data/data.dart';

class college {
  final String collegename;
  final String imageUrl;
  final String backImage;
  final Color color;

  final List<String> Courses;
  Map<String, Object> courseunits = Map();
  college({
    required this.collegename,
    required this.imageUrl,
    required this.backImage,
    required this.color,
    required this.Courses,
    required this.courseunits,
  });
}
