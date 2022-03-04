import 'package:flutter/material.dart';
import 'package:masterclass_app/utils/constants_exercises.dart';

class ImplicitFloatingButton extends StatefulWidget {
  const ImplicitFloatingButton({Key? key}) : super(key: key);

  @override
  ImplicitFloatingButtonState createState() => ImplicitFloatingButtonState();
}

class ImplicitFloatingButtonState extends State<ImplicitFloatingButton> {
  bool isCircle = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(animationExercises[0].keys.first),
        ),
        body: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(seconds: 1),
              alignment: isCircle ? Alignment.bottomRight : Alignment.topCenter,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isCircle = !isCircle;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.all(20.0),
                  height: 50.0,
                  width: isCircle ? 50.0 : 100.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(isCircle ? 40.0 : 0.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
