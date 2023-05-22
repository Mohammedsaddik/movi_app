import 'package:flutter/material.dart';
import 'package:movi_mobile_app/core/constant.dart';

class CustomPlayArrowIcon extends StatelessWidget {
  const CustomPlayArrowIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorsConst.kGreyColor,
      ),
      child: const Icon(
        Icons.play_arrow,
        color: ColorsConst.kWhiteColor,
      ),
    );
  }
}
