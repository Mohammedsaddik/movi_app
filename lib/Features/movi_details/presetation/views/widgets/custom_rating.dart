import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movi_mobile_app/core/constant.dart';

class CustomRatting extends StatelessWidget {
  const CustomRatting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 14,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemPadding:
      const EdgeInsets.symmetric(horizontal: 1),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: ColorsConst.kYellowColor,
      ),
      onRatingUpdate: (rating) {
        debugPrint(rating.toString());
      },
      unratedColor: ColorsConst.kWhiteColor,
    );
  }
}
