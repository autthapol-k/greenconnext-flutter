import 'package:authenticate_repository/authenticate_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required AuthenticateRepository authenticateRepository})
      : _authenticateRepository = authenticateRepository,
        super(SignInInitial()) {
    on<SignInWithGooglePressed>(_signInWithGooglePressed);
  }

  final AuthenticateRepository _authenticateRepository;

  Future<void> _signInWithGooglePressed(
    SignInWithGooglePressed event,
    Emitter<SignInState> emit,
  ) async {
    try {
      emit(SignInWithGoogleProgress());
      final idToken = await _authenticateRepository.signInWithGoogle();
      if (idToken != null) {
        final sessionToken = await _authenticateRepository.signInWithIdToken(
          idToken: idToken,
        );
        if (sessionToken != null) {
          emit(SignInWithGoogleSuccess());
        }
      }
    } catch (e) {
      await _authenticateRepository.signOut();
      emit(SignInWithGoogleError(error: e));
    }
  }
}
