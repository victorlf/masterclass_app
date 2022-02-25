import 'package:flutter/material.dart';
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

  static const children = <Widget>[
    ActivitiesScreen(),
    RepositoriesScreen(),
    AboutTheDevScreen(),
  ];

  static final labels = <Map<String, Widget>>[
    {'Atividades': SvgPicture.asset('assets/images/icon-feather-target.svg')},
    {'Repositórios': SvgPicture.asset('assets/images/icon-awesome-github.svg')},
    {'Sobre o dev': const Icon(Icons.person)},
  ];

  @override
  Widget build(BuildContext context) {
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
        bottomNavigationBar: CustomBottomNavigationBar(
          width: width,
          labels: labels,
          controller: controller,
        ),
      ),
    );
  }
}
