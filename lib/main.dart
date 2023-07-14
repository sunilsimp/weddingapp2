import 'package:flutter/material.dart';
import 'package:wedding_app/screens/signin.dart';
import 'package:wedding_app/constants/assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: ''),
      routes: {'/second': (context) => const Signin()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/second');
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              Assets.signup,
            ),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
