import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutTheDevScreen extends StatelessWidget {
  const AboutTheDevScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            borderRadius: BorderRadius.circular((height * 0.5) * 0.1),
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
                      backgroundImage:
                          AssetImage('assets/images/profile_picture.jpeg'),
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
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'Tecnologias Favoritas',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          height: height * 0.15,
          margin: const EdgeInsets.only(left: 10.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: ((context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  padding: const EdgeInsets.all(5.0),
                  width: width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular((height * 0.1) * 0.3),
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/images/icon-simple-flutter.svg',
                        height: (height * 0.1) * 0.7,
                      ),
                      Text(
                        'Flutter',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                );
              })),
        )
      ],
    );
  }
}
