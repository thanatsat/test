import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onPrimary.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(19.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(18.h),
        border: Border.all(
          color: appTheme.black900.withOpacity(0.1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBlackTL23 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(23.h),
        border: Border.all(
          color: appTheme.black900.withOpacity(0.1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBlackTL27 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            27.h,
          ),
          topRight: Radius.circular(
            26.h,
          ),
          bottomLeft: Radius.circular(
            27.h,
          ),
          bottomRight: Radius.circular(
            26.h,
          ),
        ),
        border: Border.all(
          color: appTheme.black900.withOpacity(0.1),
          width: 2.h,
        ),
      );
}
