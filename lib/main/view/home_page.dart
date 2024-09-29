import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:greenconnext_app/assets/assets.dart';
import 'package:greenconnext_app/l10n/l10n.dart';
import 'package:greenconnext_app/main/widgets/highlight_news.dart';
import 'package:greenconnext_app/main/widgets/widgets.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textStyle = theme.gc.textStyles;
    final l10n = context.l10n;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Assets.images.bgWelcomeBstm.image(
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            l10n.welcomeToBSTM,
                            style: textStyle.heading1
                                .copyWith(color: colorScheme.onPrimary),
                          ),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: RawMaterialButton(
                              onPressed: () {},
                              shape: const CircleBorder(),
                              fillColor: theme.colorScheme.surface,
                              child: Assets.icons.icLinearNotification.svg(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24.0),
                      const TodayCalendarEvents()
                    ],
                  ),
                ),
              )
            ],
          ),
          const HighlightNews()
        ],
      ),
    );
  }
}
