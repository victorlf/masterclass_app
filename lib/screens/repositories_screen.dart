import 'package:flutter/material.dart';

class RepositoriesScreen extends StatelessWidget {
  const RepositoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Repositories',
        style: TextStyle(fontSize: 40.0),
      ),
    );
  }
}
