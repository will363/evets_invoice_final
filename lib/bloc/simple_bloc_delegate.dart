import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocDelegate extends BlocObserver {
  void onEvents(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  void onErrors(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }

  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}
