import 'package:buyzaar/features/splash/presentation/bloc/splash_event.dart';
import 'package:buyzaar/features/splash/presentation/bloc/splash_state.dart'
    as state;
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, state.SplashState> {
  SplashBloc() : super(state.SplashInitial()) {
    on<SplashStarted>(_onSplashStarted);
    on<SplashNavigateToHome>(_onNavigateToHome);
    on<SplashNavigateToLogin>(_onNavigateToLogin);
    on<SplashNavigateToOnboarding>(_onNavigateToOnboarding);
  }

  Future<void> _onSplashStarted(
    SplashStarted event,
    Emitter<state.SplashState> emit,
  ) async {
    emit(state.SplashLoading());

    // TODO: Add your initialization logic here
    // For example:
    // - Check if user is logged in
    // - Check if it's first launch
    // - Load necessary data

    // Simulate some loading time
    await Future.delayed(const Duration(seconds: 2));

    // For now, we'll just navigate to home
    // You should implement your own logic here
    emit(state.SplashNavigateToOnboarding());
  }

  void _onNavigateToHome(
    SplashNavigateToHome event,
    Emitter<state.SplashState> emit,
  ) {
    emit(state.SplashNavigateToHome());
  }

  void _onNavigateToLogin(
    SplashNavigateToLogin event,
    Emitter<state.SplashState> emit,
  ) {
    emit(state.SplashNavigateToLogin());
  }

  void _onNavigateToOnboarding(
    SplashNavigateToOnboarding event,
    Emitter<state.SplashState> emit,
  ) {
    emit(state.SplashNavigateToOnboarding());
  }
}
