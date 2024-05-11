import 'package:express_widget/express_widget.dart';
import 'package:express_widget/src/widget/textfield/style.dart';
import 'package:flutter/material.dart';

class ExpressTextField extends StatelessWidget {
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? prefixText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;
  final Function(String)? onChange;
  final TextEditingController textEditingController;
  final String? hintText;
  final bool readOnly;
  final bool showHintText;
  final bool obscureText;
  final ExpressTextFieldStyle style;
  final ExpressTextFieldBorderStyle borderStyle;

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
    this.textInputAction,
    this.prefixText,
    this.focusNode,
    this.onChange,
    this.obscureText = false,
    this.style = ExpressTextFieldStyle.rounded,
    this.borderStyle = ExpressTextFieldBorderStyle.showFocusBorder,
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
            textInputAction: textInputAction,
            enableInteractiveSelection: false,
            enableIMEPersonalizedLearning: true,
            cursorColor: appColorBlack,
            obscureText: obscureText,
            enableSuggestions: !obscureText,
            autocorrect: !obscureText,
            cursorOpacityAnimates: true,
            cursorRadius: const Radius.circular(6),
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
              border: outlineInputBorder(),
              disabledBorder: outlineInputBorder(),
              focusedErrorBorder: outlineInputBorder(),
              focusedBorder: borderStyle == ExpressTextFieldBorderStyle.showFocusBorder
                  ? focusedBorderBorder(context: context)
                  : outlineInputBorder(),
              enabledBorder: outlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 0, color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(style == ExpressTextFieldStyle.rounded ? 50 : 12)),
    );
  }

  OutlineInputBorder focusedBorderBorder({required BuildContext context}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: Theme.of(context).primaryColor,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(style == ExpressTextFieldStyle.rounded ? 50 : 12),
      ),
    );
  }
}
