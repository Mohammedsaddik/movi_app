import 'package:flutter/cupertino.dart';
import 'package:movi_mobile_app/core/styles.dart';

import 'custom_expanded_container.dart';
import 'custom_image_circle_avatar.dart';

class CustomCastsWidget extends StatelessWidget {
  const CustomCastsWidget({
    super.key,
    required this.ScreenHight,
  });

  final double ScreenHight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text(
                  'Casts',
                  style: Styles.textStyle20,
                ),
              ],
            ),
            SizedBox(
              height: ScreenHight <= 667 ? 9 : 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCircleAvatar(),
                ReusableExpandedContainer(),
                const SizedBox(width: 20.0,),
                CustomCircleAvatar(),
                ReusableExpandedContainer(),

              ],
            ),

            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCircleAvatar(),
                ReusableExpandedContainer(),
                const SizedBox(width: 20.0,),
                CustomCircleAvatar(),
                ReusableExpandedContainer(),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
