import 'package:malang/widgets/app_bar/custom_app_bar.dart';
import 'package:malang/widgets/app_bar/appbar_image.dart';
import 'package:malang/widgets/app_bar/appbar_title.dart';
import 'package:malang/widgets/app_bar/appbar_subtitle.dart';
import 'package:malang/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/k0_item_widget.dart';
import 'package:malang/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:malang/core/app_export.dart';

class K1Screen extends StatelessWidget {
  const K1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup14,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            height: 808.v,
            width: 389.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 808.v,
                    width: 389.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                ),
                _buildTf(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildRow(context),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 75.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 35.h,
          top: 3.v,
          bottom: 3.v,
        ),
        padding: EdgeInsets.all(4.h),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder20,
        ),
        child: AppbarImage(
          imagePath: ImageConstant.imgWomanPowerAvatar,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "말랑",
              margin: EdgeInsets.only(right: 38.h),
            ),
            AppbarSubtitle(
              text: "(사용자정보)",
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettings,
          margin: EdgeInsets.symmetric(
            horizontal: 39.h,
            vertical: 7.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(28.h, 92.v, 28.h, 43.v),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 40.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return K0ItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 24.h,
        bottom: 32.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgHome,
              height: 47.v,
              margin: EdgeInsets.only(right: 24.h),
            ),
          ),
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedin,
              height: 47.v,
              margin: EdgeInsets.symmetric(horizontal: 24.h),
            ),
          ),
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgIconographyCaesarzkn,
              height: 47.v,
              margin: EdgeInsets.symmetric(horizontal: 24.h),
            ),
          ),
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 47.v,
              margin: EdgeInsets.only(left: 24.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 59,
      width: 60,
      backgroundColor: theme.colorScheme.secondaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgChatMessage,
        height: 29.5.v,
        width: 30.0.h,
      ),
    );
  }
}
