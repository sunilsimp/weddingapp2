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
      debugShowCheckedModeBanner: false,

      home: const MyHomePage(title: ''),
      routes: { '/second': (context) => Signin()
      },
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
  int _counter = 0;

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
        onTap: (){
          Navigator.pushNamed(context,'/second' );
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/image/Signup.png",
              ),
              fit: BoxFit.cover,)
          ),
        ),
      ),
    );
  }
}
