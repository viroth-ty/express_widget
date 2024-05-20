import 'dart:io';

import 'package:express_widget/express_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

@Deprecated('Use [showConfirmationDialog]')
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

Future<void> showOkayDialog({
  required BuildContext context,
  required String title,
  required String content,
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

Future<void> showConfirmationDialog(
    {required BuildContext context,
    required String title,
    required String content,
    required VoidCallback onConfirm,
    required VoidCallback onCancel}) async {
  if (Platform.isAndroid) {
    return showGeneralDialog<void>(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Hello",
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scaleX: a1.value,
          scaleY: a1.value,
          child: Opacity(
            opacity: a1.value,
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              shape: OutlineInputBorder(
                borderSide: const BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(18.0),
              ),
              // title: Text('Hello!!'),
              content: Stack(
                children: [
                  Image.network(
                    "https://static.vecteezy.com/system/resources/previews/027/187/547/non_2x/sticker-cute-cat-free-png.png",
                  ),
                  Positioned(
                    right: 0,
                    child: Transform.rotate(
                      angle: math.pi / 2,
                      child: Icon(
                        CupertinoIcons.add_circled_solid,
                      ),
                    ),
                  )
                ],
              ),
              // actions: [
              //   AppButton(
              //     onPressed: () {},
              //     text: "Ok",
              //     textColor: Colors.white,
              //     backgroundColor: Theme.of(context).primaryColor,
              //     appButtonStyle: AppButtonStyle.rectangle,
              //   ),
              //   AppButton(
              //     appButtonStyle: AppButtonStyle.rectangle,
              //     onPressed: () {
              //       Navigator.of(context).pop();
              //     },
              //     text: "Cancel",
              //     textColor: Colors.black87,
              //     backgroundColor: appColorGray,
              //   ),
              // ],
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 100),
      pageBuilder: (context, animation1, animation2) {
        return Container();
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
            CupertinoDialogAction(
              onPressed: () {
                onCancel();
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
