import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:user_credential_api/user_credential_api.dart';

import '../authenticate_repository.dart';

class AuthenticateRepository {
  AuthenticateRepository({
    required this.apiClient,
    required this.googleSignIn,
    required this.userCredentialApi,
  });

  final ApiClient apiClient;
  final GoogleSignIn googleSignIn;
  final UserCredentialApi userCredentialApi;

  Future<String?> signInWithGoogle() async {
    try {
      final account = await googleSignIn.signIn();
      final authentication = await account?.authentication;

      return authentication?.idToken;
    } catch (e, s) {
      throw AuthenticationException(e, s);
    }
  }

  Future<bool> isSignedIn() async {
    try {
      final isSignedIn = await googleSignIn.isSignedIn();
      if (isSignedIn) {
        final token = await userCredentialApi.getSessionToken();
        return token != null;
      } else {
        return false;
      }
    } catch (e, s) {
      throw AuthenticationException(e, s);
    }
  }

  Future<SessionToken?> signInWithIdToken({required String idToken}) async {
    try {
      final response = await apiClient.post(
        '/api/v1/auth/login/google',
        options: Options(
          headers: {'Authorization': 'Bearer $idToken'},
        ),
      );

      final token = SessionToken.fromJson(response.data['data']);
      await userCredentialApi.saveSessionToken(
        token: SessionTokenEntity.fromJson(token.toJson()),
      );

      return token;
    } catch (e, s) {
      throw AuthenticationException(e, s);
    }
  }

  Future<void> signOut() async {
    try {
      await googleSignIn.signOut();
      await userCredentialApi.clearCredential();
    } catch (e, s) {
      throw AuthenticationException(e, s);
    }
  }
}
