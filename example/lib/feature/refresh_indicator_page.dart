import 'package:express_widget/express_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshIndicatorPage extends StatelessWidget {
  const RefreshIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        bottom: false,
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: AppRefreshIndicator(
            onRefresh: () async {

            },
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("Single $index"),
                  subtitle: Text("Author $index"),
                  trailing: const Icon(CupertinoIcons.waveform_circle_fill),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
