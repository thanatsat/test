import 'package:hotel_reservation/widgets/custom_drop_down.dart';
import 'package:hotel_reservation/widgets/custom_icon_button.dart';
import 'package:hotel_reservation/widgets/custom_search_view.dart';
import 'widgets/eight_item_widget.dart';
import 'widgets/fifteen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomepageScreen extends StatelessWidget {
  HomepageScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 45.v),
              _buildFrameOne(context),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 227.h,
                  margin: EdgeInsets.only(left: 44.h),
                  child: Text(
                    "Discover your perfect place to stay",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 28.h,
                  right: 29.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search hotel",
                ),
              ),
              SizedBox(height: 44.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 129.h,
                  margin: EdgeInsets.only(left: 28.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder14,
                  ),
                  child: Text(
                    "Popular reserve ",
                    style: CustomTextStyles.titleMediumOnPrimarySemiBold,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildEight(context),
              SizedBox(height: 46.v),
              _buildFrameEight(context),
              SizedBox(height: 14.v),
              _buildFifteen(context)
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomDropDown(
            width: 199.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(25.h, 19.v, 15.h, 19.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage23,
                height: 10.v,
                width: 15.h,
              ),
            ),
            hintText: "Khao Yai, Nakhon Ratchasima",
            items: dropdownItemList,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(15.h, 11.v, 7.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage2,
                height: 25.adaptSize,
                width: 25.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapTxtSignup(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                top: 16.v,
                bottom: 14.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "sign up ",
                      style: theme.textTheme.titleSmall,
                    ),
                    TextSpan(
                      text: "|",
                      style: CustomTextStyles.titleSmallff717171,
                    ),
                    TextSpan(
                      text: " ",
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapTxtLogIn(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 16.v,
                bottom: 14.v,
              ),
              child: Text(
                " log in",
                style: CustomTextStyles.titleSmallBluegray800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame2,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 152.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 28.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return EightItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hotels Nearby",
            style: theme.textTheme.headlineSmall,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 9.v),
            child: Text(
              "Show all",
              style: CustomTextStyles.titleSmallBlack900,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return FifteenItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -11,
            ),
          )
        ],
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame7,
        height: 26.v,
        width: 336.h,
        margin: EdgeInsets.fromLTRB(46.h, 28.v, 47.h, 28.v),
      ),
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
