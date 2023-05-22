import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:go_router/go_router.dart';
import 'package:movi_mobile_app/core/app_router.dart';
import 'package:movi_mobile_app/core/assets.dart';
import 'package:movi_mobile_app/core/constant.dart';


class CustomNavBarIcon extends StatelessWidget {
  const CustomNavBarIcon({
    super.key,
    required this.ScreenWidth,
  });

  final double ScreenWidth;

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
        width: ScreenWidth,
        height: 75,
        borderRadius:0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorsConst.kWhiteColor.withOpacity(0.1),
            ColorsConst.kWhiteColor.withOpacity(0.1),
          ],
        ),
        border: 0,
        blur: 30,
        borderGradient:const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorsConst.kPinkColor,
            ColorsConst.kGreenColor,
          ],
        ) ,

        child:Center(
          child: BottomAppBar(
            color: Colors.transparent,
            notchMargin: 4,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AssetsData.kIconHome,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AssetsData.kIconPlayOnTv,
                    ),
                  ),
                ),
                const Expanded(
                  child: Text(''),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AssetsData.kIconCategories,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: ()
                    {
                      GoRouter.of(context).push(AppRouter.kDetailsscreen);
                    },
                    icon: SvgPicture.asset(
                      AssetsData.kIconDownload,
                    ),
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
