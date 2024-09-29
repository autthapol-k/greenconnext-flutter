import 'package:flutter/material.dart';
import 'package:greenconnext_app/l10n/l10n.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';

class HighlightNews extends StatelessWidget {
  const HighlightNews({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final textStyle = theme.gc.textStyles;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            l10n.highlightNews,
            style: textStyle.h2.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
