import 'package:cineverse_app/src/feature/auth/data/dto/user_dto.dart';
import 'package:cineverse_app/src/common/config.dart';
import 'package:cineverse_app/src/feature/auth/domain/model/user.dart';
import 'package:dio/dio.dart';


class LoginRepository {
  Future<User> login(User user) async {
    EnvVariables env = EnvVariables();
    final dto = UserDto.fromDomain(user);
    final response = await Dio().post('${env.URL}/users/login', data: dto.toForm());
    
    if (response.statusCode == 200) {
      final token = response.headers.value('Authorization');
      final domain = User(user.username, '', token: token);
      print(response.data);
      return Future.value(domain);
    } else {
      throw Exception("Usuário ou Senha Inválidos!");
    }
  }
}
