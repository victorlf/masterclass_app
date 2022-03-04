import 'package:flutter/material.dart';
import 'package:masterclass_app/utils/constants_lorem_ipsun.dart';

class ExpandableTile extends StatefulWidget {
  final String title;
  final int index;
  final ScrollController controller;
  const ExpandableTile(
      {required this.title,
      required this.index,
      required this.controller,
      Key? key})
      : super(key: key);

  @override
  _ExpandableTileState createState() => _ExpandableTileState();
}

class _ExpandableTileState extends State<ExpandableTile> {
  var isExpanded = false;
  var readyToShowContent = false;
  final duration = const Duration(milliseconds: 300);
  final logoSize = 50.0;

  void changeExpansionState() {
    if (!isExpanded) {
      var offset = widget.controller.offset;
      debugPrint('offset: $offset : ${60.0 * widget.index}');
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        widget.controller.animateTo(calculateOffset(offset),
            duration: duration, curve: Curves.ease);
      });
      //debugPrint(widget.controller.position.toString());
      //widget.controller.positions.forEach((value) => debugPrint(value.););
      setState(() {
        isExpanded = !isExpanded;
      });
      Future.delayed(duration).then((_) {
        setState(() {
          readyToShowContent = !readyToShowContent;
        });
      });
    } else {
      setState(() {
        readyToShowContent = !readyToShowContent;
        isExpanded = !isExpanded;
      });
    }
  }

  double calculateOffset(double offset) {
    var newOffset = offset + (60.0 * widget.index - offset);
    debugPrint('new offset: $newOffset');
    return newOffset;
  }

  double calculatePercentByTextLength(int textLength) {
    return (textLength / 45) * 22;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      height: isExpanded
          ? (calculatePercentByTextLength(kLoremIpsum2.length) + logoSize)
          : 60,
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          MaterialButton(
            onPressed: () => changeExpansionState(),
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      color: isExpanded
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).textTheme.headline1!.color),
                ),
                AnimatedRotation(
                  turns: isExpanded ? 0.5 : 0.0,
                  duration: duration,
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: isExpanded
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
              ],
            ),
          ),
          if (readyToShowContent)
            Column(
              children: [
                FlutterLogo(
                  size: logoSize,
                ),
                const Text(kLoremIpsum2),
                //Text('${kLoremIpsum.length}'),
              ],
            ),
        ],
      ),
    );
  }
}
