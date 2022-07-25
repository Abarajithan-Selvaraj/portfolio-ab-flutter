import 'package:abselva/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../exts/on_hover_btn.dart';

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
              _SocialBarItem(title: 'Github', nameIcon: 'github'),
              SizedBox(height: 16),
              _SocialBarItem(title: 'LinkedIn', nameIcon: 'linkedin'),
              SizedBox(height: 16),
              _SocialBarItem(title: 'Twitter', nameIcon: 'twitter'),
              SizedBox(height: 16),
              _SocialBarItem(title: 'Instagram', nameIcon: 'instagram'),
              SizedBox(height: 16),
              _SocialBarItem(title: 'Email', nameIcon: 'email'),
              SizedBox(height: 32),
            ],
          ),
          const SizedBox(
              height: 790 - 128 - 244,
              child: VerticalDivider(thickness: 2, color: lightGray)),
        ],
      ),
    );
  }
}

class _SocialBarItem extends StatefulWidget {
  final String title;
  final String nameIcon;
  const _SocialBarItem({Key? key, required this.title, required this.nameIcon})
      : super(key: key);

  @override
  State<_SocialBarItem> createState() => _SocialBarItemState();
}

class _SocialBarItemState extends State<_SocialBarItem> {
  @override
  Widget build(BuildContext context) {
    return OnHoverButton(
      dir: -1,
      builder: (isHovered) {
        String iconName = widget.nameIcon;
        Color clr = isHovered ? eerie : lightGray;
        return GestureDetector(
          onTap: () {},
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
