import 'dart:io';

import 'package:express_widget/express_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpressButton extends StatefulWidget {
  final bool? isEnabled;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final Color textColor;
  final EdgeInsets? margin;
  final AppButtonStyle appButtonStyle;
  final bool showElevation;
  final bool isLoading;
  final Widget child;

  const ExpressButton({
    super.key,
    required this.onPressed,
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
  State<ExpressButton> createState() => _ExpressButtonState();
}

class _ExpressButtonState extends State<ExpressButton> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.isEnabled == true) {
          widget.onPressed;
        }
      },
      child: SizedBox(
        height: 46,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xfff4f5f7),
            borderRadius: BorderRadius.circular(widget.appButtonStyle == AppButtonStyle.rounded ? 100.0 : 12),
          ),
          child: Builder(
            builder: (context) {
              if (widget.isLoading) {
                if (Platform.isAndroid) {
                  return const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        strokeWidth: 1,
                        strokeCap: StrokeCap.round,
                        color: Colors.white,
                      ),
                    ],
                  );
                } else {
                  return const CupertinoActivityIndicator();
                }
              } else {
                return Center(child: widget.child);
              }
            },
          ),
        ),
      ),
    );
  }
}
