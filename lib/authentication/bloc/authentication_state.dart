part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState {
  const AuthenticationState();
}

final class AuthenticationUnauthenticated extends AuthenticationState {
  const AuthenticationUnauthenticated();
}

final class AuthenticationAuthenticated extends AuthenticationState {
  const AuthenticationAuthenticated();
}
