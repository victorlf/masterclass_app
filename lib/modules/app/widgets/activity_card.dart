import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/modules/app/screens/activities/activity_exercises_screen.dart';
import 'package:masterclass_app/utils/constants_exercises.dart';

class ActivityCard extends StatelessWidget {
  final Map<String, dynamic> activity;
  const ActivityCard(this.activity, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;

    return Container(
      height: height * 0.3,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(height * 0.05),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: SvgPicture.asset(
                          'assets/images/${activity['image']!}'),
                    ),
                    Text(
                      '    ${activity['name']}',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('Exercícios:   '),
                    Text(
                      '${activity['number_of_exercises']}',
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              activity['description']!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/icon-awesome-github.svg'),
                      Text(
                        '    Acessar código fonte',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ActivityExercisesScreen(
                          title: activity['name']!,
                          exercises: activity['see_more']!,
                        ),
                      ),
                    );
                  },
                  color: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Ver mais',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 12.0,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
