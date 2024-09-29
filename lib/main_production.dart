import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:authenticate_repository/authenticate_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_credential_api/user_credential_api.dart';

import 'app/app.dart';
import 'bootstrap.dart';
import 'firebase_options_production.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  unawaited(
    bootstrap(
      () async {
        final sharePreference = await SharedPreferences.getInstance();
        final userCredentialApi = UserCredentialApi(
          sharedPreferences: sharePreference,
        );

        final apiClient = ApiClient(
          baseUrl: 'https://mutm-stg.azurewebsites.net',
          apiKey: 'am9A&8*T^DxMH2ZT\$xvhTE5U^a9a5%R5=',
          userCredentialApi: userCredentialApi,
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
          userCredentialApi: userCredentialApi,
        );

        return App(
          authenticateRepository: authenticateRepository,
        );
      },
    ),
  );
}
