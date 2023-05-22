import 'package:flutter/cupertino.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/custom_outline.dart';
import 'package:movi_mobile_app/core/constant.dart';

class CustomOutlineOnBoardingImage extends StatelessWidget {
  const CustomOutlineOnBoardingImage({
    super.key,
    required this.ScreenWidth,
  });

  final double ScreenWidth;

  @override
  Widget build(BuildContext context) {
    return CustomOutline(
      strokeWidth: 4,
      radius: ScreenWidth * 0.8,
      padding: const EdgeInsets.all(4),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          ColorsConst.kPinkColor,
          ColorsConst.kPinkColor.withOpacity(0),
          ColorsConst.kGreenColor.withOpacity(0.1),
          ColorsConst.kGreenColor,
        ],
        stops: const [0.2, 0.4, 0.6, 1],
      ),
      width: ScreenWidth * 0.8,
      height: ScreenWidth * 0.8,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/img-onboarding.png'),
            fit: BoxFit.cover,
            alignment: Alignment.bottomLeft,
          ),
        ),
      ),
    );
  }
}