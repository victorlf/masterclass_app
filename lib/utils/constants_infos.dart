import 'constants_exercises.dart';

final activitiesData = <Map<String, dynamic>>[
  {
    'name': 'Animações',
    'image': 'icon-awesome-running.svg',
    'description':
        'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
    'githubLink': '',
    'number_of_exercises': '${animationExercises.length}',
    'see_more': animationExercises,
  },
  {
    'name': 'Leitura de Mockup',
    'image': 'icon-awesome-glasses.svg',
    'description':
        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
    'githubLink': '',
    'number_of_exercises': '${mockupReadingExercises.length}',
    'see_more': mockupReadingExercises,
  },
  // {
  //   'name': 'App da Masterclass',
  //   'image': 'icon-material-toys.svg',
  //   'description':
  //       'App que compila todas as atividadese informação sobre o deve (este aqui)',
  //   'githubLink': '',
  //   'number_of_exercises': '3',
  //   'see_more': animationExercises,
  // },
  {
    'name': 'Gerador de CPF',
    'image': 'icon-material-toys.svg',
    'description': 'Montando o algoritmo para geração e validação de CPF',
    'githubLink': '',
    'number_of_exercises': '${cpfgeneratorAndValidatorExercieses.length}',
    'see_more': cpfgeneratorAndValidatorExercieses,
  },
];

const techSkillsData = <Map<String, String>>[
  {
    'name': 'Flutter',
    'image': 'flutter-logo.svg',
    'level': '8',
  },
  {
    'name': 'Dart',
    'image': 'dart-logo.svg',
    'level': '8',
  },
  {
    'name': 'Firebase',
    'image': 'firebase-logo.svg',
    'level': '6',
  },
  {
    'name': 'Python',
    'image': 'python-logo.svg',
    'level': '7',
  },
  {
    'name': 'NodeJS',
    'image': 'nodejs-logo.svg',
    'level': '5',
  },
];
