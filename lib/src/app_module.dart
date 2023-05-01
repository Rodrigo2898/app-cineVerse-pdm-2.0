/*import 'package:flutter_modular/flutter_modular.dart';
import 'feature/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/', module: HomeModule()),
  ];
} */

import 'package:cineverse_app/src/feature/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

//import 'package:cineverse_app/src/feature/auth/auth_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        //ModuleRoute('/', module: AuthModule()), // Ativar para começar na página de login
      ];
}
