import 'package:cineverse_app/src/feature/auth/presentation/view/page/loginpage.dart';
import 'package:cineverse_app/src/feature/auth/presentation/view/page/register_page.dart';
import 'package:cineverse_app/src/feature/auth/presentation/viewmodel/login_viewmodel.dart';
import 'package:cineverse_app/src/feature/auth/presentation/viewmodel/register_viewmodel.dart';

import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module{
  @override
  List<Bind<Object>> get binds =>[

     Bind.factory((i) => LoginViewModel()),
        //Bind.factory((i) => LoginUseCase()),
        //Bind.factory((i) => LoginRepository()),
        Bind.factory((i) => RegisterViewModel()),
        //Bind.factory((i) => RegisterUseCase()),
        //Bind.factory((i) => RegisterRepository()),
        //Bind.factory((i) => ForgotPasswordViewModel()),
        //Bind.factory((i) => ForgotPasswordUseCase()),
        //Bind.factory((i) => ForgotPasswordRepository()),

  ];

  @override
  List<ModularRoute>  get routes => [

    ChildRoute('/', child: (_,__) => const LoginPage(), children: []), 
    ChildRoute('/registro', child: (_,__) => const RegisterPage(), children: []),
    //ChildRoute('/novaSenha', child: (_,__) => const RegisterPage(), children: []), 
  ];
}
