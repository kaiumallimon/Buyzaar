import './onboard_event.dart' as event;
import './onboard_state.dart' as state;
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardBloc extends Bloc<event.OnboardEvent, state.OnboardState> {
  OnboardBloc() : super(state.OnboardInitial()) {
    on<event.OnboardStarted>(_onboardStarted);
    on<event.OnboardNavigateToLogin>(_onboardNavigateToLogin);
  }

  // This method handles the OnboardStarted event,
  // which is triggered when the onboarding process starts.

  Future<void> _onboardStarted(
    event.OnboardStarted event,
    Emitter<state.OnboardState> emit,
  ) async {
    // do any necessary initialization here
  }

  // This method handles the OnboardNavigateToLogin event,
  // which is triggered when the user wants to navigate to the login page.
  void _onboardNavigateToLogin(
    event.OnboardNavigateToLogin event,
    Emitter<state.OnboardState> emit,
  ) {
    emit(state.OnboardNavigateToLogin());
  }
}
