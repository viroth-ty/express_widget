import 'package:flutter/cupertino.dart';

class Empty extends StatelessWidget {
  final String? title;
  final IconData? icon;

  const Empty({
    super.key,
    this.title = "ទិន្នន័យទទេ",
    this.icon = CupertinoIcons.cube_box,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon),
        Text(title.toString()),
      ],
    );
  }
}
