import 'package:cofee_app/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title ='Cofee_App';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,// used to remove the debug sign on the top left of the app
      home: SignUp(),
      theme: ThemeData(
        brightness: Brightness.dark,// in order to create a dark mode
        primarySwatch: Colors.orange,)
    );
  }
}
