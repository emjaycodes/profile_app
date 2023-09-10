// ignore_for_file: dead_code

import 'package:flutter/material.dart';

import 'constants.dart';
import 'github_web_screen.dart';

class MyHomePage extends StatelessWidget {
  final String slackName = "Your Slack Name";
  final String githubURL = "https://github.com/yourgithubusername";

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

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
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
              backgroundColor: kprimaryAccentColor,
              radius: 70,
              backgroundImage: AssetImage(
                'assets/slack.png', // Replace with your asset path
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

class GithubButton extends StatefulWidget {
  const GithubButton({
    super.key,
  });

  @override
  State<GithubButton> createState() => _GithubButtonState();
}

class _GithubButtonState extends State<GithubButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GitHubWebView(),
                  ),
                );
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.40,
        decoration: BoxDecoration(
          color: kprimaryColor,
          border: Border.all(
            color: kprimaryAccentColor,
            width: 5, // Adjust the border width as needed
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            'Open Github',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}