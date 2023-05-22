import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:movi_mobile_app/core/constant.dart';

class GreenPositioned extends StatelessWidget {
  const GreenPositioned({
    super.key,
    required this.ScreenHight,
  });

  final double ScreenHight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ScreenHight * 0.3,
      right: -100,
      child: Container(
        height: 200.0,
        width: 200.0,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: ColorsConst.kGreenColor),
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