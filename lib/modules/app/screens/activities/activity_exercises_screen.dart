import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/app/widgets/custom_app_bar.dart';

class ActivityExercisesScreen extends StatelessWidget {
  final String title;
  final List<Map<String, Widget>> exercises;
  const ActivityExercisesScreen(
      {required this.title, required this.exercises, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        useBackArrow: true,
      ),
      body: ListView.builder(
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            return ExerciseCard(
                index: index, animationActivities: exercises[index]);
          }),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final int index;
  final Map<String, Widget> animationActivities;
  const ExerciseCard(
      {required this.index, required this.animationActivities, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => animationActivities.values.first,
        ),
      ),
      child: Container(
        height: 50.0,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundColor: Theme.of(context).primaryColor,
              child: Text(
                '${index + 1}',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              animationActivities.keys.first,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
