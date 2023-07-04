import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: ''),
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
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:
      Stack(
          children: [
            //***********  background image  *********
      Image(image: AssetImage("assets/image/signin.jpeg"),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,

    ),
    Positioned.fill(
    child:Align(

    alignment: Alignment.topCenter,
    child : Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Text('Signin / Signup ',
      style: TextStyle(color: Color(0xff800080),fontSize:24 ,
      fontWeight: FontWeight.w500),),
    )

    )
    ),
            Positioned(
              left:  41.5,
              top:  110,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width:  300,
                    height:  32,
                    child: Text(
                      'We will send you a One Time Password on your mobile',
                      textAlign:  TextAlign.center,
                      style:  TextStyle (fontSize:  16, fontWeight:  FontWeight.w500, height:  1, color:  Color(0xffaf5faf),
                      ),
                    ),
                  ),
                ),
              ),
            ),


            // ************ Signin with google **********
            Positioned(
              left: 57,
              top: 202,
              child: Container(
                width: 280,
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 16),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff800080)),
                  color: Color(0xff800080),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffdeb4de),
                      offset: Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        'assets/image/heart.png',
                        width: 24,
                        height: 24,

                      ),
                    ),
                    Container(
                      child: Text(
                        '  Sign in with Google',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 0.9,
                          color: Color(0xffffffff),
                          wordSpacing: 1,
                        ),
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        'assets/image/next.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),

        // ***********  Sign in with Apple  ************
            Positioned(
              left: 57,
              top: 265,
              child: Container(
                width: 280,
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 16),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff800080)),
                  color: Color(0xff800080),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffdeb4de),
                      offset: Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        'assets/image/heart.png',
                        width: 24,
                        height: 24,

                      ),
                    ),
                    Container(
                      child: Text(
                        '  Sign in with Apple',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 0.9,
                          color: Color(0xffffffff),
                          wordSpacing: 1,
                        ),
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        'assets/image/next.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // **************** OR *************
            Positioned(
                child: Container(
                    child: Center(
                        child: Text(
                      'OR',
                          style: TextStyle(
                            color: Color(0xffaf5faf),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                    ),
                )
            ),

            Positioned(
              left: 57,
              top: 380,
              child: Container(
                width: 281,
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffdeb4de),width: 3.0),
                    borderRadius: BorderRadius.circular(24),



                ),

                  //********** Enter Mobile or Email  ***************
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Enter your Mobile no or Email',
                          style: TextStyle(fontSize: 16,
                            fontWeight:FontWeight.w500,color: Color(0xffaf5faf) ),
                        ),
                      ),
                      Container(
                            width: 200,
                             child :  TextField(
                                decoration: InputDecoration(
                                  hintText: 'enter Mobile or Email',
                                  hintStyle: TextStyle(color: Color(0xffaf5faf))

                                ),
                              ),
                            ),
                    ]
                  ),
                ),
            ),

            // *****************  Get OTP *****************
            Positioned(
              top: 472,
              left: 57,
              child: Container(
                width: 280,
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Color(0xffe6c8e6),
                  borderRadius: BorderRadius.circular(24)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Get OTP',
                      style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.w500,
                        color: Color(0xff800080),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 0.2),
                      width:24,
                      height: 24,
                      child: Image.asset(
                          'assets/image/next.png',
                        width: 24,
                        height: 24,
                      ),
                    )
                  ],
                ),
              ),
            ),

            Positioned(
                top: 531,
                left: 50,
                child: Text(
                    'By proceeding you agree to terms & Conditions',
                  style: TextStyle(color: Color(0xff828282)),
                )
            ),

            Positioned(
              top: 560,
                left: 160,
                child: Image.asset('assets/image/bio.png')
            ),

            Positioned(
              top: 620,
                left: 144,
                child: Text('Biometric Login',
                style: TextStyle(color: Color(0xffa362a1)),
                )
            ),










    ]
      )




    

        //######### signup page code ############
      // Container(
      //
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage(
      //         "assets/image/Signup.png"
      //
      //       ),
      //       fit: BoxFit.cover,
      //     )
      //   ),
      // ),

         






    );
  }
}
