import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../responsive.dart';
import '../widgets.dart';

class CustomAnimatedText extends StatelessWidget {
  const CustomAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          Text('I build '),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'responsive web and moble app.',
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'complete e-Commerce app UI.',
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'chat app with dark and light theme',
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}
