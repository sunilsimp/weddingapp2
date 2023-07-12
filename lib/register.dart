import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/Signin.dart';

class register extends StatefulWidget {
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Stack(
            children:[ Image(image: AssetImage("assets/image/signin.jpeg"),
            height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,

            ),

              ListView(
                scrollDirection: Axis.vertical,
                children:[ Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Register',
                        style: TextStyle(fontSize:30,fontWeight: FontWeight.w500,color: Color(0xff800080)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Tell us more about youreself',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xffaf5faf)),
                      ),
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 45, 0, 0),
                          child: Column(
                            children: [
                              Image(image: AssetImage("assets/image/grm.png")),
                               Row(
                                 children: [
                                   Radio(value: 1, groupValue: 1, onChanged: null),
                                   Text('I am Groome',
                                     style:TextStyle(fontSize: 14,
                                         fontWeight: FontWeight.w500,
                                     color: Color(0xff593a59)) ,),
                                 ],
                               ),


                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 45, 0, 0),
                          child: Column(
                            children: [
                              Image(image: AssetImage("assets/image/brd.png")),
                              Row(
                                children: [
                                  Radio(value: 2, groupValue: 1, onChanged:null ),
                                  Text('I am Bride',
                                      style:TextStyle(fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff593a59))
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 25, 0, 16),
                            child: Text('First Name',
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,
                                  color: Color(0xffaf5faf),

                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xff800080))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: TextField(decoration: InputDecoration(
                                  hintText: 'Enter Your First Name',
                                  hintStyle: TextStyle(fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xffaf5faf)),
                                ),


                          ),
                            ),
                        ),
                        )],
                    ),

                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 16, 0, 16),
                            child: Text('Last Name',
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,
                                color: Color(0xffaf5faf),

                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xff800080))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: TextField(decoration: InputDecoration(
                                hintText: 'Enter Your Last Name',
                                hintStyle: TextStyle(fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xffaf5faf)),
                              ),


                              ),
                            ),
                          ),
                        )],
                    ),

                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 16, 0, 16),
                            child: Text('E-Mail',
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,
                                color: Color(0xffaf5faf),

                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xff800080))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: TextField(decoration: InputDecoration(
                                hintText: 'Enter Your Email Id',
                                hintStyle: TextStyle(fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xffaf5faf)),
                              ),


                              ),
                            ),
                          ),
                        )],
                    ),

                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 16, 0, 16),
                            child: Text('Mobile No ',
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,
                                color: Color(0xffaf5faf),

                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xffffffff),
                                border: Border.all(color: Color(0xff800080))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: TextField(decoration: InputDecoration(
                                hintText: 'Enter Your Mobile Number',
                                hintStyle: TextStyle(fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xffaf5faf)),
                              ),


                              ),
                            ),
                          ),
                        )],
                    ),

                    Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Color(0xff800080)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children :[ Text('Register',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffffffff),fontSize: 24,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                          Image(image: AssetImage('assets/image/next.png'))
                     ] ),
                    ),







                  ],
                ),


             ] ),




              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(onPressed: (){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)
                      {return Signin();},)
                  );
                }, child: Text(' << Back ')),
              ),

       ] ),





    );
  }
}