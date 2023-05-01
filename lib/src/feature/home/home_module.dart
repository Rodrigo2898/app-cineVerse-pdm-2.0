import 'package:flutter_modular/flutter_modular.dart';

import 'package:cineverse_app/src/feature/home/view/page/homepage.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage(), children: []),
      ];
}

