import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass_app/modules/app/widgets/favorite_technologies.dart';
import 'package:masterclass_app/modules/app/widgets/skills_level.dart';
import 'package:masterclass_app/utils/constants_infos.dart';

class AboutTheDevScreen extends StatelessWidget {
  final ScrollController controller;
  const AboutTheDevScreen(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ListView(
      controller: controller,
      children: [
        Container(
          width: double.infinity,
          height: height * 0.45,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 20.0,
            left: 23.0,
            right: 23.0,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular((height * 0.5) * 0.08),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: (height * 0.4) * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      //backgroundColor: Colors.blue,
                      radius: height * 0.08,
                      backgroundImage: const AssetImage(
                          'assets/images/profile_picture.jpeg'),
                    ),
                    Text(
                      'Victor Fonseca',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      'assets/images/icon-ionic-logo-whatsapp.svg',
                    ),
                    SvgPicture.asset(
                      'assets/images/icon-awesome-github-alt.svg',
                    ),
                    SvgPicture.asset(
                      'assets/images/icon-awesome-instagram.svg',
                    ),
                    SvgPicture.asset(
                      'assets/images/icon-awesome-facebook-f.svg',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Tecnologias Favoritas',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
        ),
        const FavoriteTechnologies(techSkillsData),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Habilidades e Competências',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
        ),
        const SkillsLevel(techSkillsData),
      ],
    );
  }
}
