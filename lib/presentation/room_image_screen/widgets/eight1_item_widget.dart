import 'package:hotel_reservation/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/app_export.dart';

// ignore: must_be_immutable
class Eight1ItemWidget extends StatelessWidget {
  const Eight1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.only(left: 380.h),
        padding: EdgeInsets.all(9.h),
        decoration: AppDecoration.outlineOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder14,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage183x83,
              height: 83.adaptSize,
              width: 83.adaptSize,
              radius: BorderRadius.circular(
                15.h,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 16.v,
                  bottom: 16.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "One Bedroom Suite",
                      style: CustomTextStyles.titleMediumOnPrimaryExtraBold,
                    ),
                    Text(
                      "Double Bed (2 Persons)",
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 5.v),
                    CustomRatingBar(
                      ignoreGestures: true,
                      initialRating: 5,
                      itemSize: 9,
                      itemCount: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
