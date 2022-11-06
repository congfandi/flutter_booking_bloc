import 'package:booking/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      this.type = PrimaryButtonType.type3,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);
  final PrimaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.type1
        ? _type1()
        : type == PrimaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width.w,
      height: 24.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.componentSmall.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width.w,
      height: 32.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.componentMediumBold.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width.w,
      height: 40.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.ink01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.componentLarge.copyWith(color: AppColor.ink06),
        ),
      ),
    );
  }

}

enum PrimaryButtonType {
  type1,
  type2,
  type3,
}
