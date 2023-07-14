import 'package:flutter/material.dart';

class CustomTestField extends StatelessWidget {
  const CustomTestField(
      {Key? key,
      required this.label,
      required this.hint,
      this.controller,
      this.keyboardType})
      : super(key: key);
  final String label;
  final String hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xffaf5faf),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xffffffff),
                border: Border.all(color: const Color(0xff800080))),
            child: TextField(
              controller: controller,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xffaf5faf)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
