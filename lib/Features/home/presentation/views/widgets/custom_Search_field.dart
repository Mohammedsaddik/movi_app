import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movi_mobile_app/core/assets.dart';
import 'package:movi_mobile_app/core/constant.dart';
import 'package:movi_mobile_app/core/styles.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key, required this.padding}) : super(key: key);
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: ColorsConst.kGreyColor.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              AssetsData.kIconSearch,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Opacity(
                opacity: 0.75,
                child: TextField(
                  style: Styles.textStyle17,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    isDense:true,
                    hintStyle: TextStyle(
                      color: ColorsConst.kWhiteColor.withOpacity(0.6),
                      fontSize: 17,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8,),
            SvgPicture.asset(AssetsData.kIconMic),
            const SizedBox(width: 8,),
          ],
        ),
      ),
    );
  }
}