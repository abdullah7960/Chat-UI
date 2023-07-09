import 'package:chat_message/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeData theme = ThemeData();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat UI',
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          color: Colors.red       
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
