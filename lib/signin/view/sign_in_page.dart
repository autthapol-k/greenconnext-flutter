import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenconnext_app/l10n/l10n.dart';
import 'package:greenconnext_app/route/AppRouter.gr.dart';
import 'package:greenconnext_app/signin/bloc/sign_in_bloc.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';

import '../../assets/assets.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = Theme.of(context).gc.textStyles;

    final signInBloc = SignInBloc(authenticateRepository: context.read());

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.bgSignIn.image().image,
            fit: BoxFit.cover,
          ),
        ),
        child: BlocListener<SignInBloc, SignInState>(
          bloc: signInBloc,
          listener: (context, state) {
            switch (state) {
              case SignInInitial():
                break;
              case SignInWithGoogleProgress():
                break;
              case SignInWithGoogleSuccess():
                context.router.replace(const MainRoute());
                break;
              case SignInWithGoogleError():
                break;
            }
          },

          child: Center(
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
                        onPressed: () {
                          signInBloc.add(const SignInWithGooglePressed());
                        },
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
        ),
      ),
    );
  }
}
