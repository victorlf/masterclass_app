import 'package:flutter/material.dart';
import 'package:masterclass_app/widgets/activity_card.dart';
import 'package:masterclass_app/widgets/custom_app_bar.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  static String routeName = '/activities';

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('Atividades'),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const ActivityCard();
          }),
    );
  }
}
