import 'package:cineverse_app/src/feature/auth/data/repository/login_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import 'package:cineverse_app/src/feature/auth/domain/model/user.dart';

class LoginUseCase {
  final repository = Modular.get<LoginRepository>();

  String? validateUsername(String username) {
    if (username.isEmpty) {
      return 'username_required'.i18n();
    }

    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'login_password_required'.i18n();
    }
    return null;
  }

  Future<User> login(String username, String password) {
    return repository.login(User(username, password));
  }
}
