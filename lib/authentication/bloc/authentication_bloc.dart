import 'package:authenticate_repository/authenticate_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required AuthenticateRepository authenticateRepository})
      : _authenticateRepository = authenticateRepository,
        super(const AuthenticationUnauthenticated()) {
    on<AuthenticationCheckSignedIn>(_checkIsAuthenticated);
  }

  final AuthenticateRepository _authenticateRepository;

  Future<void> _checkIsAuthenticated(
    AuthenticationCheckSignedIn event,
    Emitter<AuthenticationState> emit,
  ) async {
    final isSignedIn = await _authenticateRepository.isSignedIn();
    await Future.delayed(const Duration(seconds: 2));
    if (isSignedIn) {
      emit(const AuthenticationAuthenticated());
    } else {
      emit(const AuthenticationUnauthenticated());
    }
  }
}
