import 'package:flutter/material.dart';
import 'package:masterclass_app/modules/animations_activity/screens/implicit/implicit_floating_button_screen.dart';
import 'package:masterclass_app/modules/animations_activity/screens/implicit/implicit_my_scroll_view_screen.dart';
import 'package:masterclass_app/modules/mockups_reading_activity/screens/money_screen.dart';
import 'package:masterclass_app/modules/mockups_reading_activity/screens/tinder_screen.dart';

final animationExercises = <Map<String, Widget>>[
  {'Botão Flutuante (Implícita)': ImplicitFloatingButton()},
  {'MyScrollView (Implícita)': ImplicitMyScrollView()},
  {'Botão Flutuante (Controlada)': SizedBox()},
  {'MyScrollView (Controlada)': SizedBox()},
];

final mockupReadingExercises = <Map<String, Widget>>[
  {'Tela do Money Under Control': MoneyScreen()},
  {'Tela do Tinder': TinderScreen()},
];
