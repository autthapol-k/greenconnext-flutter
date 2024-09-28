import 'package:flutter/material.dart';
import 'package:greenconnext_app/l10n/l10n.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';

import '../../assets/assets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = Theme.of(context).gc.textStyles;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: GCSpacing.xlg),
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(GCSpacing.xlg),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Assets.icons.icBSCM.svg(width: 150, height: 90),
                        const SizedBox(height: GCSpacing.xlg),
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.icons.icSignInWithGoogle.svg(),
                              const SizedBox(width: GCSpacing.lg),
                              Text(
                                l10n.signInWithGoogle,
                                style: textTheme.body,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
