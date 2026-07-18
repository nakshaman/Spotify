import 'package:flutter/material.dart';
import 'package:spotify/core/theme/theme.dart';
import 'package:spotify/feature/auth/view/pages/login_page.dart';
import 'package:spotify/feature/auth/view/pages/signup_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
