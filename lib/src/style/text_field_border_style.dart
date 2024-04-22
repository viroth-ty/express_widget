import 'package:express_widget/src/style/app_color.dart';
import 'package:flutter/material.dart';

OutlineInputBorder borderStyle() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: appColorDarkGray
    ),
    borderRadius: BorderRadius.all(Radius.circular(12)),

  );
}
