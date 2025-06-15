import 'package:buyzaar/features/login/presentation/providers/login_provider.dart';
import 'package:buyzaar/features/onboard/presentation/providers/onboard_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:buyzaar/features/splash/presentation/providers/splash_provider.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  // Register providers
  getIt.registerFactory<SplashProvider>(() => SplashProvider());
  getIt.registerFactory<OnboardProvider>(() => OnboardProvider());
  getIt.registerFactory<LoginProvider>(() => LoginProvider());


  // Register services
  // Example: getIt.registerLazySingleton<AuthService>(() => AuthServiceImpl());

  // Register repositories
  // Example: getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(getIt()));

  // Register use cases
  // Example: getIt.registerLazySingleton(() => LoginUseCase(getIt()));

  // Register blocs/cubits
  // Example: getIt.registerFactory(() => AuthBloc(getIt()));
}
