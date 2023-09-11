import 'package:flutter/material.dart';

import '../constants.dart';
import 'button.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 75,
              backgroundColor: kprimaryColor,
              child: CircleAvatar(
                backgroundColor: kprimaryAccentColor,
                radius: 70,
                backgroundImage: AssetImage(
                  'assets/slack.png', // Replace with your asset path
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            // slack name
            const Text(
              'JaytheDev',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: kprimaryColor,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 15,
                color: kprimaryColor,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            // github button
            const GithubButton(),
          ],
        ),
      ),
    );
  }
}

