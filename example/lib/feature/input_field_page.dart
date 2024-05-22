import 'package:express_widget/express_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFieldPage extends StatefulWidget {
  const InputFieldPage({super.key});

  @override
  State<InputFieldPage> createState() => _InputFieldPageState();
}

class _InputFieldPageState extends State<InputFieldPage> {
  final TextEditingController _textEditingController = TextEditingController();

  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpressTextField(
                textInputAction: TextInputAction.next,
                textEditingController: TextEditingController(),
                hintText: "Username",
                label: const Text("Username"),
                textInputType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpressTextField(
                textInputAction: TextInputAction.next,
                textEditingController: TextEditingController(),
                hintText: "Password",
                label: const Text("Password"),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpressTextField(
                textInputAction: TextInputAction.done,
                textEditingController: _textEditingController,
                hintText: "Password",
                label: const Text("Password"),
                obscureText: obscureText,
                style: ExpressTextFieldStyle.rectangle,
                borderStyle: ExpressTextFieldBorderStyle.showFocusBorder,
                readOnly: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: Icon(
                    obscureText ? CupertinoIcons.eye_slash_fill : CupertinoIcons.eye_fill,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpressTextField(
                textInputAction: TextInputAction.done,
                textEditingController: _textEditingController,
                hintText: "Choose",
                label: const Text("Choose"),
                enabled: true,
                obscureText: obscureText,
                style: ExpressTextFieldStyle.rectangle,
                borderStyle: ExpressTextFieldBorderStyle.showFocusBorder,
                showHintText: false,
                readOnly: true,
                isSelectable: true,
                onTap: () async {
                  var value = await showModalBottomSheet<String>(
                    context: context,
                    showDragHandle: true,
                    useSafeArea: true,
                    useRootNavigator: true,
                    builder: (BuildContext context) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: SafeArea(
                          top: false,
                          bottom: true,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 0,
                                ),
                                child: Text(
                                  'Choose option',
                                  style: headerTextStyle(),
                                ),
                              ),
                              const Divider(
                                color: appColorDarkGray,
                                indent: 24,
                                endIndent: 24,
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 0,
                                ),
                                title: const Text("Billing"),
                                onTap: () {
                                  Navigator.of(context).pop("Billing");
                                },
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                                title: const Text("Item"),
                                onTap: () {
                                  Navigator.of(context).pop("Item");
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  if(value != null) {
                    _textEditingController.text = value;
                  }
                },
                suffixIcon: const Icon(Icons.arrow_downward_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
