import 'package:cineverse_app/src/feature/auth/domain/model/user_signup.dart';
import 'package:dio/dio.dart';

class UserSignUpDto {
  final String username;
  final String email;
  final String password;

  UserSignUpDto(this.username, this.email, this.password);

  factory UserSignUpDto.fromDomain(UserSignUp userSignUp) => 
    UserSignUpDto(userSignUp.username, userSignUp.email, userSignUp.password);

  factory UserSignUpDto.fromJson(Map<String, dynamic> json) => 
    UserSignUpDto(json['username'], json['email'], json['password']);

  Map<String, dynamic> toJson() => {
    'username': username,
    'email': email,
    'password': password
  };

  FormData toForm() =>
    FormData.fromMap({ 'username':username, 'email': email, 'password': password, });
}