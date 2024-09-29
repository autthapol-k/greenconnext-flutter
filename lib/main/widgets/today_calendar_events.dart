import 'package:flutter/material.dart';
import 'package:greenconnext_app/l10n/l10n.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';

import '../../assets/assets.dart';

class TodayCalendarEvents extends StatelessWidget {
  const TodayCalendarEvents({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textStyle = theme.gc.textStyles;
    final l10n = context.l10n;

    return Card(
      color: colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Row(
                    children: [
                      Text(
                        '28 Feb 2024',
                        style: textStyle.body3,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: GcDotSeparator(
                          size: 4.0,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          l10n.noEvent,
                          style: textStyle.body3.copyWith(
                            color: GCColors.softGray,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      textStyle: textStyle.body3.bold,
                    ),
                    child: Text(l10n.seeCalendar),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            Assets.images.bgEmptyCalendarEvents.image()
          ],
        ),
      ),
    );
  }
}
