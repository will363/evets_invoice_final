import 'package:evets_invoice_final/bloc/authentication_bloc/authentication_event.dart';
import 'package:evets_invoice_final/bloc/authentication_bloc/authentication_state.dart';
import 'package:evets_invoice_final/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;

  AuthenticationBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(Uninitialized());

  AuthenticationState get initialState => Uninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      yield* _mapAppStartedToState();
    }
    if (event is LoggedIn) {
      yield* _mapLoggedInToState();
    }
    if (event is LoggedOut) {
      yield* _mapLoggedOutToState();
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    try {
      final isSignedIn = await _userRepository.isSignedIn();
      if (isSignedIn) {
        final user = await _userRepository.getUser();
        yield await Future.delayed(Duration(seconds: 5), () {
          return Authenticated(user!);
        });
      } else {
        yield await Future.delayed(Duration(seconds: 5), () {
          return Unauthenticated();
        });
      }
    } catch (_) {
      yield Unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedInToState() async* {
    yield Authenticated((await _userRepository.getUser())!);
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    yield Unauthenticated();
    _userRepository.signOut();
  }
}
