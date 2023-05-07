import 'package:cineverse_app/src/feature/auth/presentation/view/page/loginpage.dart';
import 'package:cineverse_app/src/feature/auth/presentation/viewmodel/login_viewmodel/login_viewmodel.dart';

import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind.factory((i) => LoginViewModel()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, __) => const LoginPage()),
  ];
 }