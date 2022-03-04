import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteTechnologies extends StatelessWidget {
  final List<Map<String, String>> techSkillsData;
  const FavoriteTechnologies(this.techSkillsData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      margin: const EdgeInsets.only(left: 10.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: techSkillsData.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10.0),
            padding: const EdgeInsets.all(5.0),
            width: width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular((height * 0.1) * 0.3),
              color: Theme.of(context).cardColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'assets/images/${techSkillsData[index]['image']}',
                  height: (height * 0.1) * 0.7,
                ),
                Text(
                  techSkillsData[index]['name']!,
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
