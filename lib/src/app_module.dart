import 'package:flutter_application_test_modular/src/modules/home/home_module.dart';
import 'package:flutter_application_test_modular/src/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
