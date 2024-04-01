import 'package:malang/widgets/custom_text_form_field.dart';
import 'package:malang/widgets/custom_outlined_button.dart';
import 'package:malang/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:malang/core/app_export.dart';

class K0Screen extends StatelessWidget {
  K0Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SizedBox(
            height: 809.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 809.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 67.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup3,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text(
                          "말랑",
                          style: theme.textTheme.displayLarge,
                        ),
                        SizedBox(height: 78.v),
                        Text(
                          "로그인",
                          style: CustomTextStyles.titleMediumOnPrimaryContainer,
                        ),
                        SizedBox(height: 7.v),
                        Divider(
                          indent: 2.h,
                          endIndent: 10.h,
                        ),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 21.h,
                            right: 30.h,
                          ),
                          child: CustomTextFormField(
                            controller: editTextController,
                            hintText: "아이디를 입력해주세요",
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 21.h,
                            right: 31.h,
                          ),
                          child: CustomTextFormField(
                            controller: editTextController1,
                            hintText: "비밀번호를 입력해주세요",
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        CustomOutlinedButton(
                          text: "로그인",
                          margin: EdgeInsets.only(
                            left: 21.h,
                            right: 31.h,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        SizedBox(
                          height: 18.v,
                          width: 141.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "아이디 찾기    비밀번호 찾기",
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: SizedBox(
                                    child: Divider(
                                      indent: 65.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        _buildSNS(context),
                        SizedBox(height: 23.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFacebookOriginal,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 22.h),
                              child: CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGoogle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 26.h),
                              child: CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgSnsKakaotalk,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(15.h),
                                decoration: IconButtonStyleHelper.fillGreenA,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSNS(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: SizedBox(
              width: 121.h,
              child: Divider(),
            ),
          ),
          Text(
            "SNS 계정으로 로그인",
            style: theme.textTheme.labelLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: SizedBox(
              width: 121.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
