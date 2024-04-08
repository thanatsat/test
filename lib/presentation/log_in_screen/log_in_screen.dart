import 'package:hotel_reservation/widgets/custom_text_form_field.dart';
import 'package:hotel_reservation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/app_export.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController editText1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 62.h,
            vertical: 52.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(
                flex: 39,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Log in",
                  style: theme.textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 55.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Text(
                  "username:",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: CustomTextFormField(
                  controller: editTextController,
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Text(
                  "password :",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: CustomTextFormField(
                  controller: editText1Controller,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Forget password?",
                  style: CustomTextStyles.labelLargeGray400.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Spacer(
                flex: 60,
              ),
              CustomElevatedButton(
                text: "log in",
                margin: EdgeInsets.only(left: 12.h),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 88.v,
                  width: 157.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTempimagemhsqaw,
                        height: 88.v,
                        width: 157.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 148.h,
                          margin: EdgeInsets.only(top: 5.v),
                          child: Text(
                            "or\nlog in with social media",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleSmallGray400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
          ),
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
}
