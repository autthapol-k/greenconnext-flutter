import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:authenticate_repository/authenticate_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

import 'app/app.dart';
import 'bootstrap.dart';
import 'firebase_options_development.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  unawaited(
    bootstrap(
      () async {
        final apiClient = ApiClient(baseUrl: 'https://mutm-stg.azurewebsites.net');
        final authenticateRepository = AuthenticateRepository(
          apiClient: apiClient,
        );

        return App(
          apiClient: apiClient,
          authenticateRepository: authenticateRepository,
        );
      },
    ),
  );
}
