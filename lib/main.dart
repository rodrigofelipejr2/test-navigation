import 'package:flutter/material.dart';
import 'package:flutter_application_test_modular/src/app_module.dart';
import 'package:flutter_application_test_modular/src/app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
