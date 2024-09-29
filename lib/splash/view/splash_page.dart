import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenconnext_app/route/AppRouter.gr.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';

import '../../assets/assets.dart';
import '../../authentication/bloc/authentication_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            switch(state){
              case AuthenticationUnauthenticated():
                context.replaceRoute(const SignInRoute());
              case AuthenticationAuthenticated():
                context.replaceRoute(const MainRoute());
            }
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.icBSCM.svg(),
                const SizedBox(height: GCSpacing.lg),
                const SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
