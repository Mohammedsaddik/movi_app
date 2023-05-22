import 'package:flutter/cupertino.dart';
import 'package:movi_mobile_app/core/assets.dart';

class CustomPostarAppImage extends StatelessWidget {
  const CustomPostarAppImage({
    super.key,
    required this.ScreenHight,
    required this.ScreenWidth,
  });

  final double ScreenHight;
  final double ScreenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenHight*0.5,
      width: ScreenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetsData.KPosterApp)),
      ),
    );
  }
}
