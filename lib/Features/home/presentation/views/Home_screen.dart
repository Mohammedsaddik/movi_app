import 'package:flutter/material.dart';
import 'package:movi_mobile_app/Features/home/presentation/views/widgets/custom_Search_field.dart';
import 'package:movi_mobile_app/Features/home/presentation/views/widgets/custom_add_nav_bar.dart';
import 'package:movi_mobile_app/Features/home/presentation/views/widgets/custom_nav_bar_icon.dart';
import 'package:movi_mobile_app/Features/home/presentation/views/widgets/cyan_position_widget.dart';
import 'package:movi_mobile_app/Features/home/presentation/views/widgets/new_movies_list_view.dart';
import 'package:movi_mobile_app/Features/home/presentation/views/widgets/upcoming_movies_list_view.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/green_positioned_widget.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/pink_positoned_widget.dart';
import 'package:movi_mobile_app/core/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenHight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SizedBox(
        height: ScreenHight,
        width: ScreenWidth,
        child: Stack(
          children: [
            GreenPositioned(ScreenHight: ScreenHight),
            pinkpsitioned(ScreenHight: ScreenHight),
            CyanPositioned(ScreenHight: ScreenHight),
            SafeArea(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                primary: true,
                children: const [
                  SizedBox(
                    height: 45.0,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'What would you\nlike to watch?',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle30,
                    ),
                  ),
                  SizedBox(
                    height: 23.0,
                  ),
                  SearchFieldWidget(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Opacity(
                      opacity: 0.6,
                      child: Text(
                        'New Movies',
                        style: Styles.textStyle17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  SizedBox(height: 160.0, child: NewMoviesListView()),
                  SizedBox(
                    height: 23.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Opacity(
                      opacity: 0.6,
                      child: Text(
                        'Upcoming Movies',
                        style: Styles.textStyle17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  SizedBox(
                    height: 160.0,
                    child: UpcomingMoviesListView(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const CustomAddNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavBarIcon(ScreenWidth: ScreenWidth),
    );
  }
}

