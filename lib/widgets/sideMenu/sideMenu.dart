import 'package:flutter/material.dart';
import '../../constant.dart';
import '../widgets.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Details(),
                    Skills(),
                    Coding(),
                    Knowledge(),
                    FooterLink(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
