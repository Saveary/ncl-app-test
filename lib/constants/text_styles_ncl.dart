import 'package:flutter/material.dart';
import 'package:ncl_coding_assessment/constants/colors_ncl.dart';

enum TextStyleType {
  primaryAmount,
  secondaryAmount,
  primaryTextHeadline,
  primaryAmountHleadline,
}

@immutable
class TextStyleNCL extends TextStyle {
  final BuildContext context;
  final TextStyleType type;

  const TextStyleNCL(this.context, this.type);

  TextStyle? get style {
    switch (type) {
      case TextStyleType.primaryAmount:
        return Theme.of(context).textTheme.headline5?.copyWith(color: primary);

      default:
        return null;
    }
  }
}
