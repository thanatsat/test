import 'package:hotel_reservation/widgets/app_bar/custom_app_bar.dart';
import 'package:hotel_reservation/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:hotel_reservation/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:hotel_reservation/widgets/custom_rating_bar.dart';
import 'package:hotel_reservation/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';
import 'widgets/hotel_item_widget.dart';
import 'package:hotel_reservation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/app_export.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray200,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildFour(context),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 29.h,
                        vertical: 18.v,
                      ),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder50,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kirimaya Khao Yai",
                            style: theme.textTheme.headlineSmall,
                          ),
                          _buildFrameSixteen(context),
                          SizedBox(height: 26.v),
                          Text(
                            "Description",
                            style: CustomTextStyles.titleLargeBlack900,
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 366.h,
                            child: ReadMoreText(
                              "A stay at Kirimaya offers a seamless blend between Khao Yai's natural charm and the luxury of contemporary living. Our rooms, suites and tented villas are...",
                              trimLines: 4,
                              colorClickableText: appTheme.lightBlue500,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: "Read more",
                              moreStyle:
                                  CustomTextStyles.titleMediumLightblue500,
                              lessStyle:
                                  CustomTextStyles.titleMediumLightblue500,
                            ),
                          ),
                          SizedBox(height: 24.v),
                          _buildHotel(context),
                          SizedBox(height: 104.v),
                          _buildThirteen(context),
                          SizedBox(height: 44.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 437.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage1437x430,
              height: 437.v,
              width: 430.h,
              alignment: Alignment.center,
            ),
            CustomAppBar(
              leadingWidth: 69.h,
              leading: AppbarLeadingIconbutton(
                imagePath: ImageConstant.imgFrame239x40,
                margin: EdgeInsets.only(left: 29.h),
              ),
              actions: [
                AppbarTrailingIconbutton(
                  imagePath: ImageConstant.imgFrame17,
                  margin: EdgeInsets.symmetric(horizontal: 29.h),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSixteen(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 256.h,
              child: Text(
                "1/3 Moo.6, Thanarat Moo-Si Pak Chong District, Nakhon Ratchasima 30130",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleSmallBlack900,
              ),
            ),
            SizedBox(height: 7.v),
            Row(
              children: [
                CustomRatingBar(
                  initialRating: 0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "5.0 -1231 Reviews",
                    style: CustomTextStyles.titleSmallBlack900Medium,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 7.v,
          ),
          child: CustomIconButton(
            height: 47.adaptSize,
            width: 47.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.outlineBlackTL23,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame247x47,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHotel(BuildContext context) {
    return SizedBox(
      height: 85.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 10.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return HotelItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 3.v,
          ),
          child: CustomIconButton(
            height: 53.v,
            width: 54.h,
            padding: EdgeInsets.all(11.h),
            decoration: IconButtonStyleHelper.outlineBlackTL27,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame253x54,
            ),
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            height: 60.v,
            text: "Book now",
            margin: EdgeInsets.only(left: 44.h),
            buttonStyle: CustomButtonStyles.fillPrimary,
          ),
        ),
      ],
    );
  }
}
