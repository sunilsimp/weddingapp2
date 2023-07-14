import 'package:flutter/material.dart';

import '../constants/assets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.buttonText}) : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff800080)),
        color: const Color(0xff800080),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Image.asset(
            Assets.heart,
            width: 24,
            height: 24,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            buttonText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              height: 0.9,
              color: Color(0xffffffff),
              wordSpacing: 1,
            ),
          ),
          const Spacer(),
          Image.asset(
            Assets.next,
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
