import 'package:demo/course_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const ClientApp());
}

class ClientApp extends StatelessWidget{
  const ClientApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const CourseDetailScreen(),
      theme: ThemeData(
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
      ),
    );
  }
}