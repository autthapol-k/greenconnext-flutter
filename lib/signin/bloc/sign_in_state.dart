part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInWithGoogleProgress extends SignInState {}

final class SignInWithGoogleSuccess extends SignInState {}

final class SignInWithGoogleError extends SignInState {
  SignInWithGoogleError({required this.error});

  final Object? error;
}
