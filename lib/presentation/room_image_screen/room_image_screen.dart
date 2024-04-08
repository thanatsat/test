import 'package:hotel_reservation/widgets/custom_icon_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/eight1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/app_export.dart';

class RoomImageScreen extends StatelessWidget {
  RoomImageScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray200,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 29.h,
                    vertical: 39.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgFrame22,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 815.v),
                        child: CustomIconButton(
                          height: 39.v,
                          width: 40.h,
                          padding: EdgeInsets.all(10.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame239x40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 815.v),
                        child: CustomIconButton(
                          height: 39.v,
                          width: 40.h,
                          padding: EdgeInsets.all(8.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame1739x40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildEight(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 60.v),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 103.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          return Eight1ItemWidget();
        },
      ),
    );
  }
}
