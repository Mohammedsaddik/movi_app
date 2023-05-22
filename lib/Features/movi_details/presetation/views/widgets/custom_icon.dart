import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconApp extends StatelessWidget {
  final String assetName;

  const CustomIconApp({
    required this.assetName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 3, color: Colors.white),
      ),
      child: SvgPicture.asset(
        assetName,
      ),
    );
  }
}
