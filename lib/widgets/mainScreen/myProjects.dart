import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/Project.dart';
import 'package:flutter_portfolio/responsive.dart';

import '../../constant.dart';
import '../widgets.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: ProjectGridView(crossAC: 1, childAR: 2.1),
          mobileLargest: ProjectGridView(crossAC: 2, childAR: 1.5),
          tablet: ProjectGridView(childAR: 1.1),
          desktop: ProjectGridView(),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAC = 3,
    this.childAR = 1.3,
  }) : super(key: key);
  final int crossAC;
  final double childAR;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAC,
        childAspectRatio: childAR,
        mainAxisSpacing: defaultPadding,
        crossAxisSpacing: defaultPadding,
      ),
      itemCount: demoProject.length,
      itemBuilder: (BuildContext context, int index) {
        return ProjectCard(
          project: demoProject[index],
        );
      },
    );
  }
}
