import 'package:flutter/material.dart';

class HeaderJoke extends StatelessWidget {
  const HeaderJoke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 41, 179, 99),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15.0),
            child: const Text(
              'A joke a day keeps the doctor away',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          const Text(
            'If you joke wrong way, your teeth have to pay. (Serious)',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
