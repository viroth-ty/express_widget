import 'package:express_widget/express_widget.dart';
import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  int? _checkValue = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox demo"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ExpressCheckBox(
                  title: 'Smdfkfkdfkfkjdfkjdfkdjfdkfjdfkfdkfkall',
                  isSelected: _checkValue != null && _checkValue == 1? true : false,
                  onTap: () {
                    setState(() {
                      _checkValue = 1;
                    });
                  },
                  activeColor: Theme.of(context).primaryColor,
                  inActiveColor: appColorDarkGray,
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: ExpressCheckBox(
                  title: 'Big',
                  isSelected: _checkValue != null && _checkValue == 2? true : false,
                  onTap: () {
                    setState(() {
                      _checkValue = 2;
                    });
                  },
                  activeColor: Theme.of(context).primaryColor,
                  inActiveColor: appColorDarkGray,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
