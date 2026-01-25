import 'package:fruithub/core/services/Firebase_auth_service.dart';
import 'package:fruithub/features/Auth/data/repos/auth_repo_impl.dart';
import 'package:fruithub/features/Auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
}
