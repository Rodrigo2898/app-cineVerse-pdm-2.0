/*import 'package:flutter_triple/flutter_triple.dart';

class RegisterViewModel extends NotifierStore<Exception, int> {
 RegisterViewModel() : super(0);
} */

/*import 'package:flutter_triple/flutter_triple.dart';

class LoginViewModel extends NotifierStore<Exception, int> {
 LoginViewModel() : super(0);
} */

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'package:cineverse_app/src/feature/auth/domain/usercase/signup_usercase.dart';

part 'signup.g.dart';

class SignUpViewModel = _SignUpViewModelBase with _$SignUpViewModel;

abstract class _SignUpViewModelBase with Store {
  final error = SignUpError();
  final _usecase = Modular.get<SignUpUserCase>();

  @observable
  String username = '';
  
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

  @action
  void validateUsername() {
    error.username = _usecase.validateUsername(username);
  }

  @action
  void validatePassword() {
    error.password = _usecase.validatePassword(password);
  }

  @action
  void validateEmail() {
    error.email = _usecase.validateEmail(email);
  }

  void signUp() async {
    error.clear();

    validateUsername();
    validatePassword();
    validateEmail();

    if (!error.hasErrors) {
      isLoading = true;
      try {
        await _usecase.signup(username, email,password);
      } on UnimplementedError {
        error.signUp = 'Função não implementada!';
      } finally {
        isLoading = false;
      }
    }
  }
}

class SignUpError = _SignUpErrorBase with _$SignUpError;

abstract class _SignUpErrorBase with Store {

  @observable
  String? email;

  @observable
  String? username;

  @observable
  String? password;

  @observable
  String? signUp;

  @computed
  bool get hasErrors => email != null || username != null || password != null || signUp != null;

  void clear() {
    email = null;
    username = null;
    password = null;
    signUp = null;
  }
}