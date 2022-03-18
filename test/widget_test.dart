import 'package:flutter/material.dart';
import 'package:flutter_application_test_modular/src/app_module.dart';
import 'package:flutter_application_test_modular/src/app_widget.dart';
import 'package:flutter_application_test_modular/src/modules/home/home_module.dart';
import 'package:flutter_application_test_modular/src/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:modular_test/modular_test.dart';

class ModularNavigateMock extends Mock implements IModularNavigator {}

void main() {
  final navigate = ModularNavigateMock();
  Modular.navigatorDelegate = navigate;

  initModules([
    AppModule(),
    LoginModule(),
    HomeModule(),
  ], replaceBinds: []);

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await buildWidgetTester(tester: tester, child: const AppWidget());

    // final button = find.byKey(const Key('btn-login'));
    // final button = find.text('Navigate to Home');
    // expect(button, findsOneWidget);
  });
}

Future<void> buildWidgetTester({required WidgetTester tester, required Widget child}) async {
  await tester.pumpWidget(MaterialApp.router(
    title: 'My Smart App',
    theme: ThemeData(primarySwatch: Colors.blue),
    routeInformationParser: Modular.routeInformationParser,
    routerDelegate: Modular.routerDelegate,
  ));

  await tester.pump();
}
