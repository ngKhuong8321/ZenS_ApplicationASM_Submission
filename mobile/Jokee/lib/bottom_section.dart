import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomSection extends StatefulWidget {
  int curr;
  BottomSection({Key? key, required this.curr}) : super(key: key);

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

String disclaimer =
    'This appis created as part of Hlsolutions program. The materials con-tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor-mation contained on this site';

class _BottomSectionState extends State<BottomSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Disclaimer Container
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xCCCCCCCC), width: 0.1),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Disclaimer
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  right: 15.0,
                  left: 15.0,
                  bottom: 10.0,
                ),
                child: Text(
                  disclaimer,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),

              /// Copyright
              const Text(
                'Copyright 2021 HLS',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
