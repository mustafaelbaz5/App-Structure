import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// Switch Language between Arabic and English
void switchLanguage(final BuildContext context) {
  final Locale current = context.locale;

  // Switch locale
  if (current.languageCode == 'en') {
    context.setLocale(const Locale('ar'));
  } else {
    context.setLocale(const Locale('en'));
  }
  (context as Element).markNeedsBuild();
}
