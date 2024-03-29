import 'package:flutter/material.dart';

import '../../constant.dart';

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'flutter',
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: '>')
        ],
      ),
    );
  }
}
