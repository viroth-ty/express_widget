import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showConfirmDialog({
  required BuildContext context,
  String title = "លេខកូដមិនត្រឹមត្រូវ",
  String content = "សូមបញ្ចូលលេខកូដដែលបានផ្ញើទៅកាន់លេខទូរស័ព្ទរបស់អ្នក",
  required VoidCallback onConfirm,
}) async {
  if (Platform.isAndroid) {
    return showDialog<void>(
      context: context,
      useRootNavigator: false,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                onConfirm();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  } else {
    return showCupertinoDialog(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () {
                onConfirm();
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
