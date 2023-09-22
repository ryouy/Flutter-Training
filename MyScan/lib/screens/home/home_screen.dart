import 'package:flutter/material.dart';
import 'package:my_scan/common/extensions/context.dart';

import '../../navigation/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: SafeArea(
        child: Center(
          child: OutlinedButton(
            onPressed: () {
              context.navigator.pushReplacementNamed(AppRoutes.intro);
            },
            child: const Text('Logout'),
          ),
        ),
      ),
    );
  }
}
