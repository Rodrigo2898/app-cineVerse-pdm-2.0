import 'package:flutter_modular/flutter_modular.dart';

import 'package:cineverse_app/src/feature/onboarding/view/page/onboardingpage.dart';

class OnboardingModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (_, __) => const OnboardingPage(), children: []),
      ];
}