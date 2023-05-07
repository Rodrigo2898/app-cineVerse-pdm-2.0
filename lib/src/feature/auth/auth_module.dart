import 'package:cineverse_app/src/feature/auth/data/repository/login_repository.dart';
import 'package:cineverse_app/src/feature/auth/data/repository/signup_repository.dart';
import 'package:cineverse_app/src/feature/auth/domain/usercase/login_usecase.dart';
import 'package:cineverse_app/src/feature/auth/domain/usercase/signup_usercase.dart';
import 'package:cineverse_app/src/feature/auth/presentation/view/page/loginpage.dart';
import 'package:cineverse_app/src/feature/auth/presentation/view/page/register_page.dart';
import 'package:cineverse_app/src/feature/auth/presentation/viewmodel/login_viewmodel/login_viewmodel.dart';
import 'package:cineverse_app/src/feature/auth/presentation/viewmodel/signup_viewmodel/signup_viewmodel.dart';

import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module{
  @override
  List<Bind<Object>> get binds =>[

     Bind.factory((i) => LoginViewModel()),
        Bind.factory((i) => LoginUseCase()),
        Bind.factory((i) => LoginRepository()),
        Bind.factory((i) => SignUpViewModel()),
        Bind.factory((i) => SignUpUserCase()),
        Bind.factory((i) => SignUpRepository()),
        //Bind.factory((i) => ForgotPasswordViewModel()),
        //Bind.factory((i) => ForgotPasswordUseCase()),
        //Bind.factory((i) => ForgotPasswordRepository()),

  ];

  @override
  List<ModularRoute>  get routes => [

    ChildRoute('/', child: (_,__) => const LoginPage(), children: []), 
    ChildRoute('/signup', child: (_,__) => const RegisterPage(), children: []),
    //ChildRoute('/novaSenha', child: (_,__) => const RegisterPage(), children: []), 
  ];
}
