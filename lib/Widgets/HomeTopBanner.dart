// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoping_app/Utilities/style.dart';

class HomeTopBanner extends StatelessWidget {
  const HomeTopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello,User Welcome Back", style: Style.headtextStyle3),
            const Gap(5),
            Text(
              "Book Tickets",
              style: Style.headtextStyle,
            ),
          ],
        ),
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('lib/Images/airplane.png'))))
      ],
    );
  }
}
