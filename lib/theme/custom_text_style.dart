import 'package:flutter/material.dart';
import 'package:malang/core/utils/size_utils.dart';
import 'package:malang/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  // Title text style
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
}

extension on TextStyle {
  TextStyle get gowunBatang {
    return copyWith(
      fontFamily: 'Gowun Batang',
    );
  }

  TextStyle get notoSansKR {
    return copyWith(
      fontFamily: 'Noto Sans KR',
    );
  }

  TextStyle get gowunDodum {
    return copyWith(
      fontFamily: 'Gowun Dodum',
    );
  }
}
