import 'package:flutter/material.dart';
import 'package:my_scan/common/extensions/context.dart';

import '../../navigation/navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            context.navigator.pushReplacementNamed(AppRoutes.home);
          },
        ),
      ),
    );
  }
}
