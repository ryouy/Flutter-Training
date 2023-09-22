import 'package:flutter/material.dart';

import '../navigation/navigation.dart';
import '../theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      onGenerateRoute: AppNavigation.onGeneratedRoute,
      initialRoute: AppRoutes.home,
    );
  }
}
