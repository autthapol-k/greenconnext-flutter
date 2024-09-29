import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_credential_api/src/models/models.dart';

class UserCredentialApi {
  const UserCredentialApi({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  static const String sessionTokenKey = '__session_token_key__';

  Future<SessionTokenEntity?> getSessionToken() async {
    final rawJson = _sharedPreferences.getString(sessionTokenKey);
    if (rawJson != null) {
      final map = json.decode(rawJson);

      return SessionTokenEntity.fromJson(map);
    } else {
      return null;
    }
  }

  Future<bool> saveSessionToken({required SessionTokenEntity token}) async {
    final rawJson = json.encode(token);
    return _sharedPreferences.setString(sessionTokenKey, rawJson);
  }

  Future<bool> clearCredential() async {
    return await _sharedPreferences.clear();
  }
}
