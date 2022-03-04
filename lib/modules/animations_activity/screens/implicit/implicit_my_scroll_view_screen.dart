import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/animations_activity/widgets/expandable_tile.dart';

class ImplicitMyScrollView extends StatefulWidget {
  const ImplicitMyScrollView({Key? key}) : super(key: key);

  static String routeName = '/my_scroll_view';

  @override
  _ImplicitMyScrollViewState createState() => _ImplicitMyScrollViewState();
}

class _ImplicitMyScrollViewState extends State<ImplicitMyScrollView> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MyScrollView'),
        ),
        body: ListView.builder(
            controller: _controller,
            itemCount: 50,
            itemBuilder: (context, index) {
              return ExpandableTile(
                title: 'My expansion tile $index',
                index: index,
                controller: _controller,
              );
            }),
      ),
    );
  }
}
