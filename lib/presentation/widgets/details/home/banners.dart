import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:game_commerce_flutter/core/resources/string_manager.dart';
import 'package:get/get.dart';

class Banners extends StatefulWidget {
  const Banners({super.key});

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  late final List<Widget> imageSliders = imgList
      .map((item) => Container(
            height: 500.h,
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: CachedNetworkImage(
                  imageUrl: item,
                  fit: BoxFit.fitHeight,
                  height: 500.h,
                  placeholder: (context, url) => Center(
                      child: SpinKitPouringHourGlassRefined(
                          color: Colors.amber.shade400)),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )),
          ))
      .toList();

  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.passthrough, children: [
      CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 1,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Positioned(
          bottom: 48.0.h,
          left: 60.w,
          right: 60.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                height: 40.h,
                decoration:
                    BoxDecoration(color: Colors.black54.withOpacity(0.1)),
                child: Center(
                  child: Text(StringManager.exploreCollection.tr.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: Colors.white)),
                ),
              ),
            ),
          )),
      Positioned(
        bottom: 16.0.h,
        left: 0.0,
        right: 0.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
                child: ClipPath(
                  clipper: ParallelogramClipper(),
                  child: Container(
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                          color: (Theme.of(context).brightness == Brightness.light
                              ? Colors.white
                              : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.3)
                      )
                      ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
