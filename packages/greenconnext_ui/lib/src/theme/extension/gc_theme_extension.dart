import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../greenconnext_ui.dart';

class GCThemeExtension extends Equatable
    implements ThemeExtension<GCThemeExtension> {
  const GCThemeExtension({
    required this.textStyles,
  });

  final GCTextStyles textStyles;

  @override
  Object get type => GCThemeExtension;

  @override
  ThemeExtension<GCThemeExtension> copyWith({GCTextStyles? textStyles}) {
    return GCThemeExtension(textStyles: textStyles ?? this.textStyles);
  }

  @override
  ThemeExtension<GCThemeExtension> lerp(
      covariant ThemeExtension<GCThemeExtension>? other, double t) {
    if (other is! GCThemeExtension) {
      return this;
    }

    return GCThemeExtension(textStyles: textStyles);
  }

  @override
  List<Object?> get props => [
    textStyles
  ];
}

/// {@template extended_theme_data}
/// Get the [GCThemeExtension] from the [ThemeData].
/// {@endtemplate}
extension ExtendedThemeData on ThemeData {
  /// {@macro extended_theme_data}
  GCThemeExtension get gc {
    final extension = this.extension<GCThemeExtension>();
    assert(extension != null, '$GCThemeExtension not found in $ThemeData');
    return extension!;
  }
}
