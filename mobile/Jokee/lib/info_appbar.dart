import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Nametag goes here !!!
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'Handicrafted by',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'Jim HLS',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        // Avatar goes here !!!
        Container(
          margin: const EdgeInsets.only(left: 5.0),
          height: 40,
          width: 40,
          child: ClipOval(
            child: Image.asset('img/ava.png', fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
