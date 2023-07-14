import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/constants/assets.dart';
import 'package:wedding_app/main.dart';
import 'package:wedding_app/screens/register.dart';

import '../common_widgets/custom_button.dart';
import '../constants/strings.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() {
    return _SigninState();
  }
}

class _SigninState extends State<Signin> {
  final _mobile = TextEditingController();

  @override
  void dispose() {
    _mobile.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Image(
            image: const AssetImage(Assets.signin),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          ListView(children: [
            const SizedBox(
              height: 25,
            ),
            const Text(
              Strings.signin,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff800080),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(Strings.willSend,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1,
                      color: Color(0xffaf5faf))),
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomButton(
              buttonText: Strings.google,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomButton(
              buttonText: Strings.apple,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              Strings.or,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffaf5faf),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffdeb4de), width: 3.0),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(children: [
                const Text(
                  Strings.enterMobile,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffaf5faf)),
                ),
                TextField(
                  controller: _mobile,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      hintText: Strings.enterMobileHint,
                      hintStyle: TextStyle(color: Color(0xffaf5faf))),
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              height: 48,
              decoration: BoxDecoration(
                  color: const Color(0xffe6c8e6),
                  borderRadius: BorderRadius.circular(24)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    Strings.getOtp,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff800080),
                    ),
                  ),
                  Image.asset(
                    Assets.next,
                    width: 24,
                    height: 24,
                    color: const Color(0xff800080),
                  )
                ],
              ),
            ),
            const Text(
              Strings.byProceeding,
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff828282)),
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              Assets.bio,
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              Strings.biometric,
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffa362a1)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Register()),
                );
              },
              child: Image.asset(Assets.btn),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const MyApp();
                        },
                      ));
                    },
                    child: const Text(' << ${Strings.back} ')),
              ],
            ),
            const SizedBox(
              height: 25,
            )
          ]),
        ]));
  }
}
