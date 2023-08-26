import 'package:flutter/material.dart';
import 'package:instagram_clone/features/login/presentation/pages/login_screen.dart';
import 'injection_dependency.dart' as sl;
import 'navigator.dart';

void main() {
  sl.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: AppNavigator.navigatorKey,
      onGenerateRoute: AppNavigator.generateRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
