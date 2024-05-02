import 'dart:io';

import 'package:flutter/material.dart';

class AppRefreshIndicator extends StatefulWidget {
  final Widget child;
  final RefreshCallback onRefresh;

  const AppRefreshIndicator({
    super.key,
    required this.child, required this.onRefresh,
  });

  @override
  State<AppRefreshIndicator> createState() => _AppRefreshIndicatorState();
}

class _AppRefreshIndicatorState extends State<AppRefreshIndicator> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return RefreshIndicator.adaptive(
        edgeOffset: 0,
        color: Colors.red,
        strokeWidth: 1,
        onRefresh: widget.onRefresh,
        child: widget.child,
      );
    } else {
      return RefreshIndicator.adaptive(
        edgeOffset: 0,
        color: Colors.red,
        strokeWidth: 1,
        onRefresh: widget.onRefresh,
        child: widget.child,
      );
    }
  }
}
