import 'package:abselva/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'on_hover_btn.dart';

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
              height: 790 - 128 - 312,
              child: VerticalDivider(thickness: 2, color: lightGray)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(height: 32),
              _NavBarItem(title: 'Home', nameIcon: 'home'),
              SizedBox(height: 32),
              _NavBarItem(title: 'Profile', nameIcon: 'profile'),
              SizedBox(height: 32),
              _NavBarItem(title: 'Highlights', nameIcon: 'star'),
              SizedBox(height: 32),
              _NavBarItem(title: 'Projects', nameIcon: 'works'),
              SizedBox(height: 32),
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

class _NavBarItem extends StatefulWidget {
  final String title;
  final String nameIcon;
  const _NavBarItem({Key? key, required this.title, required this.nameIcon})
      : super(key: key);

  @override
  State<_NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<_NavBarItem> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return OnHoverButton(
      dir: -1,
      builder: (isHovered) {
        String iconName = widget.nameIcon;
        Color clr = isHovered
            ? (isPressed ? eerie : lightGray)
            : (isPressed ? eerie : lightGray);

        return GestureDetector(
          onTap: () {},
          onTapUp: (details) => setState(() {
            isPressed = true;
          }),
          child: SvgPicture.asset(
            'assets/icons/$iconName.svg',
            height: 24,
            width: 24,
            color: clr,
          ),
        );
      },
    );
  }
}
