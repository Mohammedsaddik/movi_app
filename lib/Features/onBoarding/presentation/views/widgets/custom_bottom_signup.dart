import 'package:flutter/cupertino.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/custom_outline.dart';
import 'package:movi_mobile_app/core/constant.dart';
import 'package:movi_mobile_app/core/styles.dart';

class CustomBottomSignUp extends StatelessWidget {
  const CustomBottomSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomOutline(
      strokeWidth: 3,
      radius: 20,
      gradient:  const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          ColorsConst.kPinkColor,
          ColorsConst.kGreenColor,
        ],
      ),
      width: 160,
      height: 38,
      padding: const EdgeInsets.all(3),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorsConst.kPinkColor.withOpacity(0.5),
              ColorsConst.kGreenColor.withOpacity(0.5),
            ],
          ),
        ),
        child: const Center(
          child: Text(
            'Sign Up',
            textAlign: TextAlign.center,
            style: Styles.textStyle14,
          ),
        ),
      ),
    );
  }
}
