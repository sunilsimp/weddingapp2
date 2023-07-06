import 'package:flutter/material.dart';
import 'package:wedding_app/Signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
      ),
      home: const MyHomePage(title: ''),
      routes: {'/second': (context) => Signin()},
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
  //Todo Not required
  int _counter = 0;

  //Todo Not required
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          //######### signup page code ############
          GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/second');
        },
            //Todo Use SizedBox if only width and height is required
            child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              "assets/image/Signup.png",
            ),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
