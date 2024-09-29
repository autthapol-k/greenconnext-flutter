import 'package:flutter/material.dart';

import '../../greenconnext_ui.dart';

class GCTheme {
  const GCTheme();

  ThemeData get themeData {
    final gcExtension = GCThemeExtension(textStyles: _textTheme);

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      dialogBackgroundColor: colorScheme.surface,
      textTheme: _textTheme.textTheme,
      dividerTheme: _dividerTheme,
      tabBarTheme: _tabBarTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      extensions: [gcExtension],
    );
  }

  ColorScheme get colorScheme {
    return ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: GCColors.googleBlue,
      surface: GCColors.seedWhite,
      onSurface: GCColors.seedWhite,
      surfaceTint: GCColors.seedWhite,
      primary: GCColors.googleBlue,
      outline: GCColors.softGray,
    );
  }

  DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      color: GCColors.mediumGray,
    );
  }

  ProgressIndicatorThemeData get _progressIndicatorTheme {
    return const ProgressIndicatorThemeData(
      linearTrackColor: GCColors.mediumGray,
    );
  }

  static TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return const Color(0xFF2E3233);
          }

          return const Color(0xFF45484F);
        },
      ),
    );
  }

  static GCTextStyles get _textTheme {
    // final isMobile = defaultTargetPlatform == TargetPlatform.android ||
    //     defaultTargetPlatform == TargetPlatform.iOS;

    return GCTextStyles.mobile;
  }
}
