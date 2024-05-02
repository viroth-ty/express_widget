import 'package:express_widget/express_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ShimmerPage extends StatefulWidget {
  const ShimmerPage({super.key});

  @override
  State<ShimmerPage> createState() => _ShimmerPageState();
}

class _ShimmerPageState extends State<ShimmerPage> {

  bool enabled = true;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1200), () {
      setState(() {
        enabled = !enabled;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        bottom: false,
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: AppRefreshIndicator(
            onRefresh: () async {
              setState(() {
                enabled = !enabled;
              });
              Future.delayed(const Duration(milliseconds: 1200), () {
                setState(() {
                  enabled = !enabled;
                });
              });
            },
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Skeletonizer(
                  enabled: enabled,
                  child: ListTile(
                    title: Text("Single $index"),
                    subtitle: Text("Author $index"),
                    trailing: const Icon(CupertinoIcons.waveform_circle_fill),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
