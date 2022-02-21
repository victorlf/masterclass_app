import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

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
                          'assets/images/icon-material-toys.svg'),
                    ),
                    Text(
                      '    Playground',
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
                      '4',
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
              'Ambiente destinado a testes e estudos em geral',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                MaterialButton(
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15.0),
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
