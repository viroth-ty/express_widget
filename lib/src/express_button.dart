import 'package:express_widget/src/style/app_color.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final bool? isEnabled;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final EdgeInsets? margin;

  const AppButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.textColor,
    this.backgroundColor,
    this.isEnabled = true,
    this.margin = const EdgeInsets.only(top: 12, bottom: 12),
  }) : super(key: key);

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
          ),
          onPressed: () {
            if (isEnabled == true) {
              onPressed();
            }
          },
          child: Text(
            text,
            style: TextStyle(
              color: isEnabled == true ? textColor : appColorBlack,
            ),
          ),
        ),
      ),
    );
  }
}
