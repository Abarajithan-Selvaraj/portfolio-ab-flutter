import 'package:abselva/constants.dart';
import 'package:abselva/views/centered_view.dart';
import 'package:abselva/widgets/main_content.dart';
import 'package:abselva/widgets/navbar.dart';
import 'package:abselva/widgets/social_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: platinum,
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(width: 60),
          const SocialBar(),
          Expanded(
            child: CenteredView(
              child: Column(
                children: const [
                  MainContent(),
                ],
              ),
            ),
          ),
          const NavBar(),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
