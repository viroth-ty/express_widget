import 'dart:io';

import 'package:express_widget/express_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpressOutlineButton extends StatelessWidget {
  final bool? isEnabled;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final EdgeInsets? margin;
  final AppButtonStyle appButtonStyle;
  final bool showElevation;
  final bool isLoading;
  final Widget child;

  const ExpressOutlineButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textColor,
    this.backgroundColor,
    this.isEnabled = true,
    this.margin = const EdgeInsets.only(top: 12, bottom: 12),
    this.isLoading = false,
    this.appButtonStyle = AppButtonStyle.rounded,
    this.showElevation = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: SizedBox(
        height: 48,
        child: OutlinedButton(
          style: ButtonStyle(
            backgroundColor: backgroundColor != null && isEnabled == true
                ? WidgetStateProperty.all<Color>(Colors.transparent)
                : WidgetStateProperty.all<Color>(Colors.transparent),
            shadowColor: WidgetStateProperty.all<Color>(appColorGray),
            elevation: WidgetStateProperty.all<double>(showElevation ? 3.0 : 0),
            shape: WidgetStateProperty.all<OutlinedBorder>(
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
                return child;
              }
            },
          ),
        ),
      ),
    );
  }
}
