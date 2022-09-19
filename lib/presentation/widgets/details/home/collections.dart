import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:game_commerce_flutter/presentation/widgets/details/home/video_view.dart';

class Collections extends StatelessWidget {
  const Collections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h),
          child: Text('COLLECTIONS', style: Theme.of(context).textTheme.titleLarge?.copyWith(letterSpacing: 2)),
        ),
       CachedNetworkImage(
          imageUrl: 'https://assets-prd.ignimgs.com/2022/05/12/classic-board-games-1652389030946.png?width=1920',
          fit: BoxFit.fitHeight,
          height: 250.h,
          width: double.infinity,
          placeholder: (context, url) => const Center(
              child: SpinKitCubeGrid(
                  color: Colors.black54)),
          errorWidget: (context, url, error) =>
          const Icon(Icons.error),
        ),

        Padding(
          padding: EdgeInsets.all(40.r),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: CachedNetworkImage(
              imageUrl: 'https://gameranx.com/wp-content/uploads/2022/07/single-player-games-2023-1.jpg',
              fit: BoxFit.fitHeight,
              height: 296.h,
              placeholder: (context, url) => const Center(
                  child: SpinKitCubeGrid(
                      color: Colors.black54)),
              errorWidget: (context, url, error) =>
              const Icon(Icons.error),
            ),
          ),
        ),

        SizedBox.fromSize(
          child: const VideoView(),
        )
      ],
    );
  }
}
