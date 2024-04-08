import 'package:hotel_reservation/widgets/custom_text_form_field.dart';
import 'package:hotel_reservation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  TextEditingController editText3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 40.v),
          child: Column(
            children: [
              SizedBox(height: 58.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 53.h),
                  child: Text(
                    "Sign Up",
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ),
              SizedBox(height: 61.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "e-mail :",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 1.v),
              _buildEditText(context),
              SizedBox(height: 20.v),
              SizedBox(
                height: 65.v,
                width: 294.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    _buildEditText1(context),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: Text(
                          "username :",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              SizedBox(
                height: 65.v,
                width: 294.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    _buildEditText2(context),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 21.h),
                        child: Text(
                          "create password :",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              SizedBox(
                height: 65.v,
                width: 294.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    _buildEditText3(context),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "phone number :",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              _buildSignUp(context),
              SizedBox(height: 21.v),
              SizedBox(
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(
      width: 294.h,
      controller: editTextController,
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return CustomTextFormField(
      width: 294.h,
      controller: editText1Controller,
      alignment: Alignment.bottomCenter,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return CustomTextFormField(
      width: 294.h,
      controller: editText2Controller,
      alignment: Alignment.bottomCenter,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return CustomTextFormField(
      width: 294.h,
      controller: editText3Controller,
      textInputAction: TextInputAction.done,
      alignment: Alignment.bottomCenter,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      width: 294.h,
      text: "Sign Up",
      onPressed: () {
        onTapSignUp(context);
      },
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

  /// Navigates to the logInScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
