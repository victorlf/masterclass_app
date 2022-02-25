import 'package:flutter/material.dart';
import 'package:masterclass_app/widgets/activity_card.dart';

class ActivitiesScreen extends StatefulWidget {
  final ScrollController controller;
  const ActivitiesScreen(this.controller, {Key? key}) : super(key: key);

  static String route = '/activities';

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          controller: widget.controller,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const ActivityCard();
          }),
    );
  }
}
