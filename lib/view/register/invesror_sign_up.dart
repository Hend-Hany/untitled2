import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/shared/appbutton.dart';
import 'package:untitled2/shared/textformfield.dart';

class InvestorSignUp extends StatelessWidget {
  const InvestorSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(children: [
              Text(
                'Register as an investor',
                style: TextStyle(
                  color: Color(0xFF1088F0),
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 23,
              ),
              AppTextField(
                hint: 'Full Name',
                keyboardtype: TextInputType.text,
              ),
              AppTextField(
                hint: 'E-mail Address',
                keyboardtype: TextInputType.emailAddress,
              ),
              AppTextField(
                hint: 'Password',
                keyboardtype: TextInputType.visiblePassword,
              ),
              AppTextField(
                hint: 'Confirm Password',
                keyboardtype: TextInputType.visiblePassword,
              ),
              AppTextField(
                hint: 'Phone',
                keyboardtype: TextInputType.phone,
              ),
              SizedBox(
                height: 32,
              ),
              AppButton(
                title: 'Register',
                containerColor: Color(0xFF1088F0),
                textColor: Color(0xFFF8F8F8),
                height: 40,
              ),

            ]),
          ),
      ),


    );
  }
}
