import 'dart:io';

import 'package:express_widget/express_widget.dart';
import 'package:express_widget/src/widget/button/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final bool? isEnabled;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final EdgeInsets? margin;
  final bool isLoading;
  final AppButtonStyle appButtonStyle;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textColor,
    this.backgroundColor,
    this.isEnabled = true,
    this.margin = const EdgeInsets.only(top: 12, bottom: 12),
    this.isLoading = false,
    this.appButtonStyle = AppButtonStyle.rounded,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: SizedBox(
        height: 48,
        child: FilledButton(
          style: ButtonStyle(
            backgroundColor: backgroundColor != null && isEnabled == true
                ? MaterialStateProperty.all<Color>(backgroundColor!)
                : MaterialStateProperty.all<Color>(appColorGray),
            shadowColor: MaterialStateProperty.all<Color>(appColorGray),
            elevation: MaterialStateProperty.all<double>(3.0),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(appButtonStyle == AppButtonStyle.rounded ? 100.0 : 12),
              ),
            ),
          ),
          onPressed: isEnabled == true ? onPressed : null,
          child: Builder(
            builder: (context) {
              if (isLoading) {
                if (Platform.isAndroid) {
                  return const CircularProgressIndicator(
                    strokeWidth: 2,
                    strokeCap: StrokeCap.round,
                    color: Colors.white,
                  );
                } else {
                  return const CupertinoActivityIndicator();
                }
              } else {
                return Text(
                  text,
                  style: TextStyle(
                    color: isEnabled == true ? textColor : appColorBlack,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
