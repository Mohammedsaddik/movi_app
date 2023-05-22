import 'package:flutter/cupertino.dart';
import 'package:movi_mobile_app/Features/home/data/model/movie.dart';
import 'package:movi_mobile_app/Features/onBoarding/presentation/views/widgets/custam_masked_image.dart';
import 'package:movi_mobile_app/core/assets.dart';

class UpcomingMoviesListView extends StatelessWidget {
  const UpcomingMoviesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: upcomingMovies.length,
      itemBuilder: (context, index) {
        String mask;
        if (index == 0) {
          mask = AssetsData.kMaskFirstIndex;
        } else if (index == upcomingMovies.length - 1) {
          mask = AssetsData.kMaskLastIndex;
        } else {
          mask = AssetsData.kMaskCenter;
        }
        return GestureDetector(
          child: Container(
            margin: EdgeInsets.only(
              left: index == 0 ? 20 : 0,
            ),
            height: 160,
            width: 142,
            child: MaskedImage(
              asset: upcomingMovies[index].moviePoster,
              mask: mask,
            ),
          ),
        );
      },
    );
  }
}
