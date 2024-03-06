import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/constants/my_assets.dart';
import '../../core/constants/my_colors.dart';

Widget commonButton(context, {required onpress, required buttontext}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        backgroundColor: MyColors.primaryColor),
    onPressed: onpress,
    child: '$buttontext'
        .text
        .color(Colors.white)
        .size(14.sp)
        .fontWeight(FontWeight.w600)
        .make(),
  );
}

Widget appLogo() {
  return Image.asset(
    MyAssets.whitelogo,
    height: 42.h,
    width: 139.w,
  ).centered();
}

Widget formFields(
    {required title, required icondata, required controller, ispassword}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      '$title'.text.size(14.sp).color(MyColors.primaryColor).make(),
      8.h.heightBox,
      VxTextField(
        suffixColor: MyColors.primaryColor,
        isPassword: ispassword != null ? true : false,
        obscureText: ispassword != null ? true : false,
        controller: controller,
        fillColor: Colors.transparent,
        borderColor: MyColors.primaryColor,
        borderType: VxTextFieldBorderType.roundLine,
        borderRadius: 10.r,
        prefixIcon: Icon(
          icondata,
          color: MyColors.primaryColor,
        ),
      )
    ],
  );
}

Widget greyFormFields({required title, required controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      '$title'.text.size(14.sp).make(),
      SizedBox(
        height: 40.h,
        child: VxTextField(
          controller: controller,
          fillColor: Colors.grey.shade200,
          borderType: VxTextFieldBorderType.roundLine,
          borderColor: Colors.black,
          borderRadius: 10.r,
        ),
      )
    ],
  );
}

Widget categoryItem({required text}) {
  return Container(
      height: 53.h,
      width: 108.w,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.primaryColor, width: 2.w),
          borderRadius: BorderRadius.circular(28.r)),
      child: '$text'
          .text
          .size(12.sp)
          .fontWeight(FontWeight.w600)
          .color(MyColors.primaryColor)
          .makeCentered());
}

Widget categoryItemLong({required text}) {
  return Container(
      height: 53.h,
      width: 228.w,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.primaryColor, width: 2.w),
          borderRadius: BorderRadius.circular(28.r)),
      child: '$text'
          .text
          .size(12.sp)
          .fontWeight(FontWeight.w600)
          .color(MyColors.primaryColor)
          .makeCentered());
}
