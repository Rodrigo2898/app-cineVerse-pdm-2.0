import 'package:cineverse_app/src/feature/auth/domain/model/user.dart';

abstract class ILogin {
  Future<User> login(User user);
}
