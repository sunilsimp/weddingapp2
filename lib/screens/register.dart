import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/constants/assets.dart';
import 'package:wedding_app/screens/signin.dart';

import '../common_widgets/custom_text_field.dart';
import '../constants/strings.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() {
    return _RegisterState();
  }
}

class _RegisterState extends State<Register> {
  String _sex = "Groom";
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _mobile = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _mobile.dispose();

    super.dispose();
  }

  void onChanged(String? val) {
    _sex = val!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Image(
          image: const AssetImage(Assets.signin),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        ListView(children: [
          const SizedBox(
            height: 25,
          ),
          const Text(
            Strings.register,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Color(0xff800080)),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            Strings.tellUs,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xffaf5faf)),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Image(image: AssetImage(Assets.grm)),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Radio(
                          value: "Groom",
                          groupValue: _sex,
                          onChanged: onChanged),
                      const Text(
                        Strings.groom,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff593a59)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  const Image(image: AssetImage(Assets.brd)),
                  Row(
                    children: [
                      Radio(
                          value: "Bride",
                          groupValue: _sex,
                          onChanged: onChanged),
                      const Text(Strings.bride,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff593a59)))
                    ],
                  ),
                ],
              ),
            ],
          ),
          CustomTestField(
            label: Strings.firstName,
            hint: Strings.enterYour,
            controller: _firstName,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTestField(
            label: Strings.lastName,
            hint: Strings.enterLast,
            controller: _lastName,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTestField(
            label: Strings.email,
            hint: Strings.enterEmail,
            controller: _email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTestField(
            label: Strings.mobileNo,
            hint: Strings.enterMobileN,
            controller: _mobile,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xff800080)),
            child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.register,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Image(image: AssetImage(Assets.next))
                ]),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Signin();
                      },
                    ));
                  },
                  child: const Text(' << ${Strings.back} ')),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
        ]),
      ]),
    );
  }
}
