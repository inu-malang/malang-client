import 'package:flutter/material.dart';
import 'package:malang/core/app_export.dart';

// ignore: must_be_immutable
class K0ItemWidget extends StatelessWidget {
  const K0ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImg,
              height: 233.v,
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Row(
                children: [
                  Container(
                    width: 42.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Text(
                      "역할맥",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Container(
                    width: 28.h,
                    margin: EdgeInsets.only(left: 9.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Text(
                      "3명",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Container(
                    width: 33.h,
                    margin: EdgeInsets.only(left: 9.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Text(
                      "남자",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "간단한 한줄소개 (코멘트 작성)",
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 8.v),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavoriteBorder,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmarkBorder,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
          ],
        ),
      ),
    );
  }
}
