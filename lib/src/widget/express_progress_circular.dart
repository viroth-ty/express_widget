import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppProgressCircular extends StatelessWidget {
  const AppProgressCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        if (Platform.isAndroid) {
          return const CircularProgressIndicator(
            strokeWidth: 2,
            strokeCap: StrokeCap.round,
          );
        } else {
          return const CupertinoActivityIndicator();
        }
      },
    );
  }
}
