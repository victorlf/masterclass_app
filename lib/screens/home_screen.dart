import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/screens/about_the_dev.dart';
import 'package:masterclass_app/screens/activities_screen.dart';
import 'package:masterclass_app/screens/repositories_screen.dart';
import 'package:masterclass_app/widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String route = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final duration = const Duration(milliseconds: 200);

  static const _children = <Widget>[
    ActivitiesScreen(),
    RepositoriesScreen(),
    AboutTheDevScreen(),
  ];

  static final _labels = <Map<String, Widget>>[
    {'Atividades': SvgPicture.asset('assets/images/icon-feather-target.svg')},
    {'Repositórios': SvgPicture.asset('assets/images/icon-awesome-github.svg')},
    {'Sobre o dev': const Icon(Icons.person)},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  double _changePosition(double width, int index) {
    var position = 0.0;
    switch (index) {
      case 0:
        position = (width / 3) * 0.5 - 33;
        break;
      case 1:
        position = (width / 3) * 1.5 - 28;
        break;
      case 2:
        position = (width / 3) * 2.5 - 20;
        break;
      default:
    }
    return position;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(_labels[_selectedIndex].keys.first),
        body: _children[_selectedIndex],
        bottomNavigationBar: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                duration: duration,
                top: kBottomNavigationBarHeight * 0.09,
                left: _changePosition(width, _selectedIndex),
                child: Container(
                  width: 50.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: _labels[0].values.first,
                        onTap: () {
                          _onItemTapped(0);
                        },
                      ),
                      Text(_labels[0].keys.first),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kBottomNavigationBarHeight * 0.2),
                    child: VerticalDivider(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: _labels[1].values.first,
                        onTap: () => _onItemTapped(1),
                      ),
                      Text(_labels[1].keys.first),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kBottomNavigationBarHeight * 0.2),
                    child: VerticalDivider(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: _labels[2].values.first,
                        onTap: () => _onItemTapped(2),
                      ),
                      Text(_labels[2].keys.first),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
