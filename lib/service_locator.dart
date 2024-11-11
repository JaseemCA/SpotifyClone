import 'package:get_it/get_it.dart';
import 'package:spotifyclone/data/repository/auth/auth_repository_impl.dart';
import 'package:spotifyclone/data/sources/auth/auth_firebase_servise.dart';
import 'package:spotifyclone/domain/repository/auth/auth.dart';
import 'package:spotifyclone/domain/usecases/auth/signup.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl());

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl());

  sl.registerSingleton<SignupCase>(
    SignupCase()); 

}
 