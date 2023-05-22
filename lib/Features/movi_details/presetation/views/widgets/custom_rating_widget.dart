import 'package:flutter/cupertino.dart';
import 'package:movi_mobile_app/core/constant.dart';
import 'package:movi_mobile_app/core/styles.dart';

import 'custom_casts_widget.dart';
import 'custom_rating.dart';

class CustamRatingWidget extends StatelessWidget {
  const CustamRatingWidget({
    super.key,
    required this.ScreenWidth,
    required this.ScreenHight,
  });

  final double ScreenWidth;
  final double ScreenHight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: ScreenWidth * 0.7,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Opacity(
                opacity: 0.75,
                child: Text(
                  '2021•Action-Adventure-Fantasy•2h36m',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle13,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomRatting(),
              const SizedBox(
                height: 20,
              ),
              Opacity(
                opacity: 0.75,
                child: Text(
                  'The saga of the Eternals, a race of\nimmortal beings who lived on Earth\nand shaped its history and\ncivilizations.',
                  textAlign: TextAlign.center,
                  maxLines: ScreenHight <= 667 ? 2 : 4,
                  style: Styles.textStyle14,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: ScreenHight * 0.01,
        ),
        Container(
          height: 2,
          width: ScreenWidth * 0.8,
          color: ColorsConst.kWhiteColor.withOpacity(0.15),
        ),
        SizedBox(
          height: ScreenHight * 0.01,
        ),
        CustomCastsWidget(ScreenHight: ScreenHight),
      ],
    );
  }
}
