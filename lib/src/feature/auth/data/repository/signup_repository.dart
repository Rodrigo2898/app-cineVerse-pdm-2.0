import 'package:cineverse_app/src/feature/auth/data/dto/user_signup_dto.dart';
import 'package:cineverse_app/src/common/config.dart';
import 'package:cineverse_app/src/feature/auth/domain/model/user_signup.dart';
import 'package:dio/dio.dart';

class SignUpRepository {
  Future<bool> signUp(UserSignUp userSignUp) async {
    EnvVariables env = EnvVariables();
    final dto = UserSignUpDto.fromDomain(userSignUp);
    final response = await Dio().post('${env.URL}/users/login', data: dto.toJson());

    if ([200, 201].contains(response.statusCode)) {
      print(response.data);
      print('Usuário registrado com sucesso');
      return true;
    } else {
      print("Falha ao registrar usuário");
      return false;
    }
  }
}