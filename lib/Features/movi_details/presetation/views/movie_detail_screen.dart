import 'package:flutter/material.dart';
import 'package:movi_mobile_app/Features/movi_details/presetation/views/widgets/custom_icon.dart';
import 'package:movi_mobile_app/Features/movi_details/presetation/views/widgets/custom_play_arrow_icon.dart';
import 'package:movi_mobile_app/Features/movi_details/presetation/views/widgets/custom_poster_image.dart';
import 'package:movi_mobile_app/Features/movi_details/presetation/views/widgets/custom_rating_widget.dart';


class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenHight = MediaQuery
        .of(context)
        .size
        .height;
    final ScreenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: CustomPostarAppImage(
                ScreenHight: ScreenHight, ScreenWidth: ScreenWidth),
          ),
          Positioned(
            top: ScreenHight * 0.05,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: CustomIconApp(assetName: 'assets/svg/icon-back.svg',)
                  ),
                  CustomIconApp(assetName: 'assets/svg/icon-menu.svg'),
                ],
              ),
            ),
          ),
          Positioned(
            right: 9,
            top: ScreenHight * 0.42,
            child: Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFE53BB),
                    Color(0xFF09FBD3),
                  ],
                ),
              ),
              child: const CustomPlayArrowIcon(),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: ScreenHight * 0.5,
              transform: Matrix4.translationValues(0, -ScreenHight * 0.05, 0),
              child: CustamRatingWidget(ScreenWidth: ScreenWidth, ScreenHight: ScreenHight),
            ),
          )
        ],
      ),
    );
  }
}




