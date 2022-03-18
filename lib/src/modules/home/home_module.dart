import 'package:flutter_application_test_modular/src/modules/home/pages/home_page.dart';
import 'package:flutter_application_test_modular/src/modules/home/pages/profile_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/profile', child: (context, args) => const ProfilePage()),
      ];
}
