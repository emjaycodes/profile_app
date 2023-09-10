// ignore_for_file: dead_code

import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets/profile_card.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ksecondaryColor,
      appBar: AppBar(
        backgroundColor: kprimaryAccentColor,
        title: const Text('My GitHub profile', style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.black
            ),),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: ProfileCard())
        ],
      ),
    );
  }
}

