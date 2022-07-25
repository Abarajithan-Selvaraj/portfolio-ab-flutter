import 'package:abselva/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
              height: 790 - 128 - 244,
              child: VerticalDivider(thickness: 2, color: lightGray)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(height: 32),
              _NavBarItem(title: 'Home', nameIcon: 'home'),
              SizedBox(height: 16),
              _NavBarItem(title: 'Profile', nameIcon: 'profile'),
              SizedBox(height: 16),
              _NavBarItem(title: 'Highlights', nameIcon: 'star'),
              SizedBox(height: 16),
              _NavBarItem(title: 'Projects', nameIcon: 'works'),
              SizedBox(height: 16),
              _NavBarItem(title: 'Contact', nameIcon: 'call'),
              SizedBox(height: 32),
            ],
          ),
          const SizedBox(
              height: 128,
              child: VerticalDivider(thickness: 2, color: lightGray)),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final String nameIcon;
  const _NavBarItem({Key? key, required this.title, required this.nameIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$nameIcon.svg',
      height: 24,
      width: 24,
    );
  }
}
