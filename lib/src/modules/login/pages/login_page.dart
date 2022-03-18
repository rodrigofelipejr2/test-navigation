import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          key: const Key('btn-login'),
          child: const Text('Navigate to Home'),
          onPressed: () {
            Modular.to.navigate('/home');
          },
        ),
      ),
    );
  }
}
