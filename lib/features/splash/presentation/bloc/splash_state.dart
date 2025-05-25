abstract class SplashState {}

class SplashInitial extends SplashState {}

class SplashLoading extends SplashState {}

class SplashNavigateToHome extends SplashState {}

class SplashNavigateToLogin extends SplashState {}

class SplashNavigateToOnboarding extends SplashState {}

class SplashError extends SplashState {
  final String message;

  SplashError(this.message);
}
