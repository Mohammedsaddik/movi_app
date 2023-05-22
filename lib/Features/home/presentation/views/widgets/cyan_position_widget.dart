import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:movi_mobile_app/core/constant.dart';

class CyanPositioned extends StatelessWidget {
  const CyanPositioned({
    super.key,
    required this.ScreenHight,
  });

  final double ScreenHight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -100,
      left: -100,
      child: Container(
        height: 200.0,
        width: 200.0,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: ColorsConst.kCyanColor),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 200.0,
            sigmaY: 200.0,
          ),
          child: const SizedBox(
            height: 166.0,
            width: 166.0,),
        ),
      ),
    );
  }
}