import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.hint, required this.keyboardtype,
      });

  final String hint;
  final TextInputType keyboardtype;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType:keyboardtype ,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Color(0xFF5A5A5A),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            border:  OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFC7CACC),
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),

        ),
        const SizedBox(height: 8,)
      ],
    );

  }
}
