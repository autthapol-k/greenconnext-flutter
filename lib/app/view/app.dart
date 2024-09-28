import 'package:api_client/api_client.dart';
import 'package:authenticate_repository/authenticate_repository.dart';
import 'package:flutter/material.dart';
import 'package:greenconnext_app/l10n/l10n.dart';
import 'package:greenconnext_app/signin/view/sign_in_page.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.apiClient,
    required this.authenticateRepository,
  });

  final ApiClient apiClient;
  final AuthenticateRepository authenticateRepository;

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [],
    //   child: MultiBlocProvider(
    //     providers: [],
    //     child: const AppView(),
    //   ),
    // );
    return const AppView();
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = const GCTheme().themeData;

    return MaterialApp(
      title: 'GreenConnext',
      theme: theme,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SignInPage(),
    );
  }
}
