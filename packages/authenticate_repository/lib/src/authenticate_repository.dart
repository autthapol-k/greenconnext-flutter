import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../authenticate_repository.dart';

class AuthenticateRepository {
  AuthenticateRepository({
    required this.apiClient,
    required this.googleSignIn,
  });

  final ApiClient apiClient;
  final GoogleSignIn googleSignIn;

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
      return await googleSignIn.isSignedIn();
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

      return SessionToken.fromJson(response.data['data']);
    } catch (e, s) {
      throw AuthenticationException(e, s);
    }
  }

  Future<void> signOut() async {
    try {
      await googleSignIn.signOut();
    } catch (e, s) {
      throw AuthenticationException(e, s);
    }
  }
}
