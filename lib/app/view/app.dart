import 'package:authenticate_repository/authenticate_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenconnext_app/authentication/bloc/authentication_bloc.dart';
import 'package:greenconnext_app/l10n/l10n.dart';
import 'package:greenconnext_app/route/AppRouter.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  App({
    super.key,
    required AuthenticateRepository authenticateRepository,
  }) : _authenticateRepository = authenticateRepository;

  final _appRouter = AppRouter();

  final AuthenticateRepository _authenticateRepository;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider.value(value: _authenticateRepository)],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => AuthenticationBloc(
              authenticateRepository: _authenticateRepository,
            )..add(AuthenticationCheckSignedIn()),
          )
        ],
        child: AppView(appRouter: _appRouter),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key, required AppRouter appRouter})
      : _appRouter = appRouter;

  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    final theme = const GCTheme().themeData;

    return MaterialApp.router(
      title: 'GreenConnext',
      theme: theme,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _appRouter.config(),
    );
  }
}
