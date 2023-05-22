import 'package:flutter/cupertino.dart';
import 'package:movi_mobile_app/core/constant.dart';

class CustomListGenerate extends StatelessWidget {
  const CustomListGenerate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          width: 7,
          height: 7,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 0
                  ? ColorsConst.kGreenColor
                  : index == 1
                  ? ColorsConst.kWhiteColor.withOpacity(0.2)
                  : ColorsConst.kWhiteColor.withOpacity(0.2)),
        );
      }),
    );
  }
}
