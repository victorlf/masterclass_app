import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final double width;
  final List<Map<String, Widget>> labels;
  final PageController controller;
  const CustomBottomNavigationBar(
      {required this.width,
      required this.labels,
      required this.controller,
      Key? key})
      : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  final duration = const Duration(milliseconds: 200);

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.controller
        .animateToPage(index, duration: duration, curve: Curves.ease);
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
    return SizedBox(
      height: kBottomNavigationBarHeight,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: duration,
            top: kBottomNavigationBarHeight * 0.09,
            left: _changePosition(widget.width, selectedIndex),
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
                    child: widget.labels[0].values.first,
                    onTap: () {
                      _onItemTapped(0);
                    },
                  ),
                  Text(widget.labels[0].keys.first),
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
                    child: widget.labels[1].values.first,
                    onTap: () => _onItemTapped(1),
                  ),
                  Text(widget.labels[1].keys.first),
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
                    child: widget.labels[2].values.first,
                    onTap: () => _onItemTapped(2),
                  ),
                  Text(widget.labels[2].keys.first),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
