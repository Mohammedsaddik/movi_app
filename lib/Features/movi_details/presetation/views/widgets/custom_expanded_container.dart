import 'package:flutter/material.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/custam_masked_image.dart';
import 'package:movi_mobile_app/core/assets.dart';

class ReusableExpandedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 40,
          maxWidth: 112,
        ),
        transform: Matrix4.translationValues(-6, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            MaskedImage(
              asset: AssetsData.kMaskCast,
              mask: AssetsData.kMaskCast,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Angelina\nJolie',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  maxLines: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
