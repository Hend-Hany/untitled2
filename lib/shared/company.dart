import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/core/dimention.dart';
import 'package:untitled2/shared/text.dart';

class Company extends StatelessWidget {
  const Company(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.time,
      required this.image});
  final String title;
  final String subtitle;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all( 10),
        child:
          Row(children: [
            Container(
              height: 30.height,
              width: 30.width,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: time,
                  color: Colors.grey,
                  fontSize: 8,
                  fontWeight: FontWeight.w300,
                ),
                AppText(
                  title: title,
                  color: Colors.black,
                  fontSize: 12,
                ),
                AppText(
                  title: subtitle,
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 30.height,
              width: 30.width,
              child: const Icon(
                Icons.more_horiz,
                color: Colors.grey,
                size: 12,
              ),
            ),

          ]),
        );
  }
}
