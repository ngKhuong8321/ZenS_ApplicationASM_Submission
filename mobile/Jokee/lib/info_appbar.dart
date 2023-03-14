import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'Handicrafted by',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'Nguyen Khuong',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 5.0),
          height: 40,
          width: 40,
          child: ClipOval(
            child: Image.asset('img/ava.jpg', fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
