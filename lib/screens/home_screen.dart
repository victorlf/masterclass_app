import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/screens/about_the_dev.dart';
import 'package:masterclass_app/screens/activities_screen.dart';
import 'package:masterclass_app/screens/repositories_screen.dart';
import 'package:masterclass_app/widgets/custom_app_bar.dart';
import 'package:masterclass_app/widgets/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String route = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final controller = PageController();
  final scrollController = ScrollController();
  var hideBottomNavigation = false;

  static final labels = <Map<String, Widget>>[
    {'Atividades': SvgPicture.asset('assets/images/icon-feather-target.svg')},
    {'Repositórios': SvgPicture.asset('assets/images/icon-awesome-github.svg')},
    {'Sobre o dev': const Icon(Icons.person)},
  ];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
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
    scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      ActivitiesScreen(scrollController),
      const RepositoriesScreen(),
      const AboutTheDevScreen(),
    ];

    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(labels[selectedIndex].keys.first),
        body: PageView.builder(
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
