import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movi_mobile_app/core/constant.dart';
import 'core/app_router.dart';


void main() {
  runApp(const MoviApp());
}
class MoviApp extends StatelessWidget {
  const MoviApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorsConst.kBlackColor,
        fontFamily: GoogleFonts.openSans().fontFamily,),
      debugShowCheckedModeBanner: false,
    );
  }
}
