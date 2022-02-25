import 'package:flutter/material.dart';

class SkillsLevel extends StatelessWidget {
  final List<Map<String, String>> techSkillsData;
  const SkillsLevel(this.techSkillsData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: 35.0 * techSkillsData.length,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular((height * 0.5) * 0.08),
      ),
      child: ListView.builder(
        itemCount: techSkillsData.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(techSkillsData[index]['name']!),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      height: 10.0,
                      width: width * 0.6,
                      //margin: EdgeInsets.only(left: width * 0.1),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    Container(
                      height: 10.0,
                      width: (width * 0.6) *
                          (int.parse(techSkillsData[index]['level']!) / 10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
