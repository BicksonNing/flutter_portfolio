import 'package:flutter/material.dart';

import '../widgets.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AreaInfoText(
          title: "Residence",
          text: "India",
        ),
        AreaInfoText(
          title: "City",
          text: "Manipur",
        ),
        AreaInfoText(
          title: "Age",
          text: "23",
        ),
      ],
    );
  }
}
