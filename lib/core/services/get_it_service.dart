import 'package:fruithub/core/services/Database_Service.dart';
import 'package:fruithub/core/services/FireStore_Service.dart';
import 'package:fruithub/core/services/Firebase_auth_service.dart';
import 'package:fruithub/features/Auth/data/repos/auth_repo_impl.dart';
import 'package:fruithub/features/Auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseService>(FirestoreService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      databaseService: getIt<DatabaseService>(),
    ),
  );
}
