import 'package:express_widget/express_widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpressButton(
                  appButtonStyle: AppButtonStyle.rectangle,
                  onPressed: () {
                    debugPrint("on pressed");
                  },
                  text: "Hello",
                  textColor: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpressButton(
                  appButtonStyle: AppButtonStyle.rectangle,
                  onPressed: () {
                    debugPrint("on pressed");
                  },
                  text: "Hello",
                  textColor: Colors.white,
                  isLoading: true,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpressButton(
                  appButtonStyle: AppButtonStyle.rectangle,
                  onPressed: () {
                    debugPrint("on pressed");
                  },
                  text: "Hello",
                  textColor: Colors.white,
                  isEnabled: false,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpressOutlineButton(
                  appButtonStyle: AppButtonStyle.rectangle,
                  onPressed: () {
                    debugPrint("on pressed");
                  },
                  text: "Hello",
                  textColor: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Ionicons.logo_google),
                      Container(width: 20),
                      const Text(
                        "Continue with Google",
                        style: TextStyle(
                          color: appColorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpressOutlineButton(
                  appButtonStyle: AppButtonStyle.rectangle,
                  onPressed: () {
                    debugPrint("on pressed");
                  },
                  text: "Hello",
                  textColor: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Ionicons.logo_apple),
                      Container(width: 20),
                      const Text(
                        "Continue with Apple",
                        style: TextStyle(
                          color: appColorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpressOutlineButton(
                  appButtonStyle: AppButtonStyle.rectangle,
                  onPressed: () {
                    debugPrint("on pressed");
                  },
                  text: "Hello",
                  textColor: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(Ionicons.logo_facebook),
                      Container(width: 20),
                      const Text(
                        "Continue with Facebook",
                        style: TextStyle(
                          color: appColorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
