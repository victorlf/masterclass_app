import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/modules/app/widgets/custom_app_bar.dart';
import 'package:masterclass_app/modules/app/widgets/custom_bottom_navigation_bar.dart';

import 'about_the_dev.dart';
import 'activities/activities_screen.dart';
import 'repositories_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String route = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final controller = PageController();
  final activitiesScrollController = ScrollController();
  final aboutScrollController = ScrollController();
  var hideBottomNavigation = false;

  static final labels = <Map<String, Widget>>[
    {'Atividades': SvgPicture.asset('assets/images/icon-feather-target.svg')},
    {'Repositórios': SvgPicture.asset('assets/images/icon-awesome-github.svg')},
    {'Sobre o dev': const Icon(Icons.person)},
  ];

  @override
  void initState() {
    super.initState();
    activitiesScrollController.addListener(() {
      if (activitiesScrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          hideBottomNavigation = true;
        });
      } else {
        setState(() {
          hideBottomNavigation = false;
        });
      }
    });

    aboutScrollController.addListener(() {
      if (aboutScrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          hideBottomNavigation = true;
        });
      } else {
        setState(() {
          hideBottomNavigation = false;
        });
      }
    });
  }

  @override
  void dispose() {
    activitiesScrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      ActivitiesScreen(activitiesScrollController),
      const RepositoriesScreen(),
      AboutTheDevScreen(aboutScrollController),
    ];

    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: labels[selectedIndex].keys.first),
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          itemCount: children.length,
          itemBuilder: (context, index) {
            return children[index];
          },
          onPageChanged: (page) {
            setState(() {
              selectedIndex = page;
            });
          },
        ),
        bottomNavigationBar: AnimatedCrossFade(
          firstChild: CustomBottomNavigationBar(
            width: width,
            labels: labels,
            controller: controller,
          ),
          secondChild: const SizedBox(),
          crossFadeState: !hideBottomNavigation
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
