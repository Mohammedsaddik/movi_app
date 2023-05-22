import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movi_mobile_app/core/assets.dart';
import 'package:movi_mobile_app/core/constant.dart';

class CustomAddNavBar extends StatelessWidget {
  const CustomAddNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 70.0,
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorsConst.kPinkColor.withOpacity(0.2),
              ColorsConst.kGreenColor.withOpacity(0.2),
            ]
        ),
      ),
      child: Container(
        width: 64.0,
        height: 64.0,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorsConst.kPinkColor,
                ColorsConst.kGreenColor,
              ]
          ),
        ),
        child: RawMaterialButton(
          onPressed: () {},
          shape: const CircleBorder(),
          fillColor:const Color(0xff404c57) ,
          child: SvgPicture.asset(AssetsData.kIconPlus),
        ),
      ),
    );
  }
}