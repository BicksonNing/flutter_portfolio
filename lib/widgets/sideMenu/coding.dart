import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant.dart';

import '../widgets.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          label: 'Dart',
          percentage: 0.8,
        ),
        AnimatedLinearProgressIndicator(
          label: 'HTML',
          percentage: 0.95,
        ),
        AnimatedLinearProgressIndicator(
          label: 'CSS',
          percentage: 0.7,
        ),
        AnimatedLinearProgressIndicator(
          label: 'JavaScript',
          percentage: 0.5,
        ),
        AnimatedLinearProgressIndicator(
          label: 'Python',
          percentage: 0.1,
        ),
      ],
    );
  }
}
