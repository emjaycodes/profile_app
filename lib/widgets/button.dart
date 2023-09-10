import 'package:flutter/material.dart';

import '../constants.dart';
import '../github_web_screen.dart';

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