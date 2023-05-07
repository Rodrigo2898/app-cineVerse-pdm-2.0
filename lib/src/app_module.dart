import 'package:cineverse_app/src/feature/auth/auth_module.dart';
import 'package:cineverse_app/src/feature/home/home_module.dart';
import 'package:cineverse_app/src/feature/onboarding/onboarding_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: OnboardingModule()),
        ModuleRoute('/auth', module: AuthModule()),    //mudar do login para o onboarding
        ModuleRoute('/home', module: HomeModule())
      ];
}