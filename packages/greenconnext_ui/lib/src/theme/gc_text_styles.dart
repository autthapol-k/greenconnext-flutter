import 'package:flutter/material.dart';

/// {@template gc_text_styles}
/// Text styles used in the GreenConnext UI.
/// {@endtemplate}
abstract class GCTextStyles {
  const GCTextStyles._();

  /// Package name
  static const package = 'greenconnext_ui';

  /// Text styles for mobile devices.
  static const mobile = _TextStylesMobile._();

  /// Creates a [TextTheme] from the text styles.
  TextTheme get textTheme => TextTheme(
        displayLarge: heading1,
        displaySmall: h2,
        bodyLarge: body,
        bodyMedium: body3,
        bodySmall: body5,
      );

  /// Text style for heading1.
  TextStyle get heading1;

  /// Text style for h2.
  TextStyle get h2;

  /// Text style for body.
  TextStyle get body;

  /// Text style for body2.
  TextStyle get body2;

  /// Text style for body3.
  TextStyle get body3;

  /// Text style for body4.
  TextStyle get body4;

  /// Text style for body5.
  TextStyle get body5;
}

class _TextStylesMobile extends GCTextStyles {
  const _TextStylesMobile._() : super._();

  @override
  TextStyle get heading1 => const TextStyle(
        fontFamily: 'Google Sans',
        fontWeight: FontWeight.w500,
        fontSize: 24,
        height: 1.33,
        package: GCTextStyles.package,
      );

  @override
  TextStyle get h2 => const TextStyle(
        fontFamily: 'Google Sans',
        fontWeight: FontWeight.w500,
        fontSize: 18,
        height: 1.3,
        letterSpacing: 0,
        package: GCTextStyles.package,
      );

  @override
  TextStyle get body => const TextStyle(
        fontFamily: 'Google Sans',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0,
        package: GCTextStyles.package,
      );

  @override
  TextStyle get body2 => const TextStyle(
        fontFamily: 'Google Sans',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0,
        package: GCTextStyles.package,
      );

  @override
  TextStyle get body3 => const TextStyle(
        fontFamily: 'Google Sans',
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 1.43,
        package: GCTextStyles.package,
      );

  @override
  TextStyle get body4 => const TextStyle(
        fontFamily: 'Google Sans',
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.33,
        package: GCTextStyles.package,
      );

  @override
  TextStyle get body5 => const TextStyle(
        fontFamily: 'Google Sans',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.33,
        package: GCTextStyles.package,
      );
}

/// Extension for [TextStyle] to add Font Weight
extension TextStyleX on TextStyle? {
  /// Copy with [FontWeight.w700]
  TextStyle? get bold => this?.copyWith(fontWeight: FontWeight.w700);

  /// Copy with [FontWeight.w500]
  TextStyle? get medium => this?.copyWith(fontWeight: FontWeight.w500);

  /// Copy with [FontWeight.w400]
  TextStyle? get regular => this?.copyWith(fontWeight: FontWeight.w400);
}
