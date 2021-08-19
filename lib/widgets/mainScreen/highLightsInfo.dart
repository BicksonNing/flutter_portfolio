import 'package:flutter/material.dart';
import 'package:flutter_portfolio/responsive.dart';

import '../../constant.dart';
import '../widgets.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobile(context)
          ? Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HighLight(
                        counter: AnimatedCounter(
                          value: 4,
                          text: 'K',
                        ),
                        label: 'Subscribers',
                      ),
                      HighLight(
                        counter: AnimatedCounter(
                          value: 1,
                          text: 'K+',
                        ),
                        label: 'Followers',
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HighLight(
                        counter: AnimatedCounter(
                          value: 30,
                          text: '+',
                        ),
                        label: 'Videos',
                      ),
                      HighLight(
                        counter: AnimatedCounter(
                          value: 2,
                          text: '+',
                        ),
                        label: 'GitHub Projects',
                      ),
                    ],
                  )
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: 4,
                    text: 'K',
                  ),
                  label: 'Subscribers',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 1,
                    text: 'K+',
                  ),
                  label: 'Followers',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: '+',
                  ),
                  label: 'Videos',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 2,
                    text: '+',
                  ),
                  label: 'GitHub Projects',
                ),
              ],
            ),
    );
  }
}
