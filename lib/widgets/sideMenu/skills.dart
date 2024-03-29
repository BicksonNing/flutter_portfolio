import 'package:flutter/material.dart';

import '../../constant.dart';
import '../widgets.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            'Skills',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: 'Flutter',
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.5,
                label: 'Nodejs',
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.9,
                label: 'Designing',
              ),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding / 2,
        )
      ],
    );
  }
}
