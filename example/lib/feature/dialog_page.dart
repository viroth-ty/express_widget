import 'package:express_widget/express_widget.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppButton(
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
            text: "Confirm dialog",
            textColor: Colors.white,
          ),
          AppButton(
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
            text: "Okay dialog",
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
