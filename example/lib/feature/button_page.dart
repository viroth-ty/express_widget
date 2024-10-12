import 'package:express_widget/express_widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button variant"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 12.0),
                  width: MediaQuery.of(context).size.width,
                  child: ExpressButton(
                    appButtonStyle: AppButtonStyle.rectangle,
                    onPressed: () {
                      debugPrint("on pressed");
                    },
                    textColor: Colors.white,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text("Hello"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12.0),
                  width: MediaQuery.of(context).size.width,
                  child: ExpressButton(
                    appButtonStyle: AppButtonStyle.rectangle,
                    onPressed: () {
                      debugPrint("on pressed");
                    },
                    textColor: Colors.white,
                    isLoading: true,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text("Hello"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 12.0),
                  child: ExpressButton(
                    appButtonStyle: AppButtonStyle.rectangle,
                    onPressed: () {
                      debugPrint("on pressed");
                    },
                    textColor: Colors.white,
                    isEnabled: false,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text("Hello"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 12.0),
                  child: ExpressButton(
                    appButtonStyle: AppButtonStyle.rectangle,
                    onPressed: () {
                      debugPrint("on pressed");
                    },
                    textColor: Colors.white,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Ionicons.logo_google, size: 16,),
                        Container(width: 8.0),
                        const Text(
                          "បន្តជាមួយ Google",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
