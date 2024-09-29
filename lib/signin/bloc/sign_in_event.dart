part of 'sign_in_bloc.dart';

@immutable
sealed class SignInEvent {
  const SignInEvent();
}

final class SignInWithGooglePressed extends SignInEvent {
  const SignInWithGooglePressed();
}
