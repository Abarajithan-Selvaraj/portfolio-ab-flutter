import 'package:abselva/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'on_hover_btn.dart';
import 'dart:html' as html;

class SocialBar extends StatelessWidget {
  const SocialBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
              height: 128,
              child: VerticalDivider(thickness: 2, color: lightGray)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(height: 32),
              _SocialBarItem(
                title: 'Github',
                url: 'https://github.com/Abarajithan-Selvaraj',
              ),
              SizedBox(height: 32),
              _SocialBarItem(
                title: 'LinkedIn',
                url: 'https://www.linkedin.com/in/abbyselvaraj/',
              ),
              SizedBox(height: 32),
              _SocialBarItem(
                title: 'Twitter',
                url: 'https://twitter.com/AbbySelvaraj',
              ),
              SizedBox(height: 32),
              _SocialBarItem(
                title: 'Instagram',
                url: 'https://www.instagram.com/ab_selvaraj/',
              ),
              SizedBox(height: 32),
              _SocialBarItem(
                title: 'Email',
                url:
                    'mailto:abarajithan.s@outlook.com?subject=News&body=New%20plugin',
              ),
              SizedBox(height: 32),
            ],
          ),
          const SizedBox(
              height: 790 - 128 - 312,
              child: VerticalDivider(thickness: 2, color: lightGray)),
        ],
      ),
    );
  }
}

class _SocialBarItem extends StatefulWidget {
  final String title;
  final String url;
  const _SocialBarItem({Key? key, required this.title, required this.url})
      : super(key: key);

  @override
  State<_SocialBarItem> createState() => _SocialBarItemState();
}

class _SocialBarItemState extends State<_SocialBarItem> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return OnHoverButton(
      dir: -1,
      builder: (isHovered) {
        String iconName = widget.title.toLowerCase();
        Color clr = isHovered
            ? (isPressed ? azure : lightGray)
            : (isPressed ? azure : lightGray);

        return GestureDetector(
          onTap: () {},
          onTapUp: (details) => setState(() {
            isPressed = true;
            // _launchURL(widget.url);
            html.window.open(widget.url, widget.title);
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
