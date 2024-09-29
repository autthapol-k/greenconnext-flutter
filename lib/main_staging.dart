import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:authenticate_repository/authenticate_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'app/app.dart';
import 'bootstrap.dart';
import 'firebase_options_development.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  unawaited(
    bootstrap(
      () async {
        final apiClient = ApiClient(
          baseUrl: 'https://mutm-stg.azurewebsites.net',
          apiKey: 'am9A&8*T^DxMH2ZT\$xvhTE5U^a9a5%R5=',
        );
        final googleSignIn = GoogleSignIn(
          clientId:
              '612363427229-t9v4dno5maspfvr2dlfp2geakdltjuh4.apps.googleusercontent.com',
          serverClientId:
              '612363427229-099erpqe8n4405k1580u3khd164dj945.apps.googleusercontent.com',
        );

        final authenticateRepository = AuthenticateRepository(
          apiClient: apiClient,
          googleSignIn: googleSignIn,
        );

        return App(
          authenticateRepository: authenticateRepository,
        );
      },
    ),
  );
}
