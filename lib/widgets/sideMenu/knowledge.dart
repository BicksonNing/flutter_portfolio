import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant.dart';

import '../widgets.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledges',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: 'Flutter, Dart'),
        KnowledgeText(text: 'Stylus, Sass, Less'),
        KnowledgeText(text: 'Gulp, Webpack, Grunt'),
        KnowledgeText(text: 'GIT Knowledge'),
      ],
    );
  }
}
