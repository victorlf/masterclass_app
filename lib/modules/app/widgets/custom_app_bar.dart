import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool useBackArrow;
  const CustomAppBar({required this.title, this.useBackArrow = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: useBackArrow,
      titleSpacing: 5.0,
      leading: useBackArrow
          ? null
          : Container(
              height: kToolbarHeight,
              width: 50.0,
              margin: const EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/logo@3x.png',
                  ),
                ),
              ),
            ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const Text(
            'Flutterando Masterclass',
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/icon-awesome-moon.svg'),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
