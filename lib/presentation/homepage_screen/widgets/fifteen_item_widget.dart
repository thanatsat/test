import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/app_export.dart';

// ignore: must_be_immutable
class FifteenItemWidget extends StatelessWidget {
  const FifteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage1101x101,
          height: 101.adaptSize,
          width: 101.adaptSize,
          radius: BorderRadius.circular(
            15.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            top: 30.v,
            bottom: 17.v,
          ),
          child: Column(
            children: [
              Text(
                "Movenpick Khaoyai",
                style: CustomTextStyles.titleMediumBlack900,
              ),
              SizedBox(height: 1.v),
              SizedBox(
                width: 146.h,
                child: Text(
                  "334 T. Wang Sai A. Pak Chong, Nakhon Ratchasima",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 28.v,
            bottom: 33.v,
          ),
          child: Column(
            children: [
              Text(
                "5,984  THB",
                style: CustomTextStyles.titleMediumPrimary,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage17,
                      height: 9.v,
                      width: 10.h,
                      margin: EdgeInsets.symmetric(vertical: 5.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "4.9",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
