import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/core/dimention.dart';
import 'package:untitled2/core/utils.dart';
import 'package:untitled2/shared/company.dart';
import 'package:untitled2/shared/text.dart';
import 'package:image_picker/image_picker.dart';

class InvestorProfile extends StatelessWidget {
  InvestorProfile({super.key});

  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    _image = img;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomLeft,
              children: [
                _image != null
                    ? CircleAvatar(
                        radius: 16,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 240.height,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcQH4X7Uwaufssra6SpqhqtA0OLRjpYs4bcwLCOqjljq1YiutHgisDtlHRuDYzZMkVdqKplY_avb3UZWvBF09k8'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                Positioned(
                  top: 80,
                  bottom: -80,
                  child: Container(
                    height: 180.height,
                    width: 180.width,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcQH4X7Uwaufssra6SpqhqtA0OLRjpYs4bcwLCOqjljq1YiutHgisDtlHRuDYzZMkVdqKplY_avb3UZWvBF09k8'),
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 2.width,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 10,
                  child: CircleAvatar(
                    radius: 16,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.photo_camera,
                          color: Colors.black,
                          size: 16,
                        )),
                  ),

                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.height,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            alignment: Alignment.bottomLeft,
            height: 130.height,
            child: const AppText(
              title: 'Investor name',
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.work_outline,
                          color: Colors.grey,
                          size: 12,
                        ),
                        AppText(
                          title: 'Science & technology',
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8.width,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                          size: 12,
                        ),
                        AppText(
                          title: 'Location',
                          color: Colors.grey,
                          fontSize: 10,
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.alternate_email_rounded,
                          color: Colors.grey,
                          size: 12,
                        ),
                        AppText(
                          title: 'email.com',
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8.width,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.calendar_month_rounded,
                          color: Colors.grey,
                          size: 12,
                        ),
                        AppText(
                          title: 'Joined 2024',
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: 'HISTORY FEED',
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                AppText(
                  title: '2 New updates in last 48 hours',
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ],
            ),
          ),
          const Company(
              title: 'Company1',
              subtitle: 'information about company1',
              time: '23 hours ago',
              image:
                  'https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQD9NKxbdTpXpgKOIXKGKxL2XoTSLS468GNjEiCKVp5w7QP9vTMAv0zW9rcTF7pRD8IqoeZv-zTuEmFz8SD9ko'),
          const Company(
            title: 'company2',
            subtitle: 'information about company2',
            time: '1 day ago',
            image:
                'https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQD9NKxbdTpXpgKOIXKGKxL2XoTSLS468GNjEiCKVp5w7QP9vTMAv0zW9rcTF7pRD8IqoeZv-zTuEmFz8SD9ko',
          ),
        ],
      ),
    );
  }
}
