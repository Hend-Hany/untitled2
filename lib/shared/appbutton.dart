import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, this.onTap, required this.textColor, this.containerColor, required this.height,  });

  final String title;
  final void Function()?onTap;
  final Color textColor;
  final Color? containerColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height:height ,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: containerColor,
      ),
        child:
        Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),


      ),
    );
  }
}
