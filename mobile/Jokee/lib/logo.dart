import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 50,
      child: Image.asset(
        'img/logo.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
