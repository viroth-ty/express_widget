import 'package:express_widget/express_widget.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AppButton(
                  onPressed: () {},
                  text: "Hello",
                  textColor: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AppButton(
                  onPressed: () {},
                  text: "Hello",
                  textColor: Colors.white,
                  isLoading: true,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AppButton(
                  onPressed: () {},
                  text: "Hello",
                  textColor: Colors.white,
                  isEnabled: false,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
