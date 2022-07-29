import 'package:abselva/constants.dart';
import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  final String title;
  const DownloadButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      decoration: const BoxDecoration(
        color: eerie,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: platinum,
        ),
      ),
    );
  }
}
