import 'package:express_widget/express_widget.dart';
import 'package:flutter/material.dart';
import 'package:figma_squircle/figma_squircle.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ExpressButton(
              backgroundColor: Theme.of(context).primaryColor,
              isEnabled: true,
              onPressed: () {
                showConfirmationDialog(
                  context: context,
                  title: "Hello",
                  content: "Content",
                  onConfirm: () {

                  },
                  onCancel: () {
                    Navigator.pop(context);
                  },
                );
              },
              textColor: Colors.white,
              child: const Text("Confirm dialog"),
            ),
            ExpressButton(
              backgroundColor: Theme.of(context).primaryColor,
              isEnabled: true,
              onPressed: () {
                showOkayDialog(
                  context: context,
                  title: "Hello",
                  content: "Content",
                  onConfirm: () {

                  },
                );
              },
              textColor: Colors.white,
              child: Text("Okay dialog"),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: ShapeDecoration(
                color: Colors.red.withOpacity(0.75),
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 20,
                    cornerSmoothing: 0.5,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
