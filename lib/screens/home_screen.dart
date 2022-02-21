import 'package:flutter/material.dart';
import 'package:masterclass_app/widgets/activity_card.dart';
import 'package:masterclass_app/widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
