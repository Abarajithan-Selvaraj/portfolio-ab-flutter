import 'package:abselva/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 760,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Text(
                'hey! it\'s me',
                style: TextStyle(color: azure, fontSize: 32),
              ),
              const SizedBox(width: 12),
              SvgPicture.asset(
                'assets/icons/logo.svg',
                height: 24,
                width: 48,
                color: azure,
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'abarajithan selvaraj.',
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: const [
              Text(
                'simply redefining the ',
                style: TextStyle(fontSize: 64, color: lightGray),
              ),
              Text(
                'creo.',
                style: TextStyle(
                  fontSize: 64,
                  color: lime,
                  // fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            "A tech-savvy enhances the Mechanical Engineer's applications to meet industrial needs when it comes to Industry 4.0. With all my 7+ years of Mechanical + Computer experience, I offer solutions to support Manufacturing Industries through CAD Automation (Design Automation), CAE Automation, and software-related solutions. I strongly believe that automating the boring kinds of stuff or daily routines of an engineer makes him/her more creative and productive. He/she brings more values and fun to the organization we belong.",
            style: TextStyle(fontSize: 16, color: lightGray),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
