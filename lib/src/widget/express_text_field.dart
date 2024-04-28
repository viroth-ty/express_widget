import 'package:express_widget/express_widget.dart';
import 'package:flutter/material.dart';

class ExpressTextField extends StatelessWidget {
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? prefixText;
  final TextInputType? textInputType;
  final VoidCallback? onTap;
  final Function(String)? onChange;
  final TextEditingController textEditingController;
  final String? hintText;
  final bool readOnly;
  final bool showHintText;

  const ExpressTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    required this.textEditingController,
    this.hintText,
    this.readOnly = false,
    this.showHintText = false,
    this.textInputType = TextInputType.text,
    this.prefixText,
    this.focusNode,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          if (showHintText == true && hintText != null) {
            return Text(hintText!);
          } else {
            return const SizedBox.shrink();
          }
        }),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: TextFormField(
            focusNode: focusNode,
            controller: textEditingController,
            onTap: onTap,
            onChanged: onChange,
            autofocus: false,
            readOnly: readOnly,
            keyboardType: textInputType,
            enableInteractiveSelection: false,
            enableIMEPersonalizedLearning: true,
            cursorColor: appColorBlack,
            cursorOpacityAnimates: true,
            style: TextStyle(fontSize: 16, color: readOnly ? appColorBlack.withOpacity(0.4) : appColorBlack, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              hintStyle: const TextStyle(fontSize: 16),
              filled: true,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              isCollapsed: false,
              isDense: true,
              hintText: hintText,
              fillColor: readOnly ? appColorDarkGray.withOpacity(0.5) : const Color(0xfff4f5f7),
              border: borderStyle(),
              disabledBorder: borderStyle(),
              focusedErrorBorder: borderStyle(),
              focusedBorder: borderStyle(),
              enabledBorder: borderStyle(),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder borderStyle() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
          width: 0,
          color: Colors.white
      ),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    );
  }
}
