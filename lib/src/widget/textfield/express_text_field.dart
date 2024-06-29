import 'package:express_widget/express_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExpressTextField extends StatelessWidget {
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? label;
  final String? prefixText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;
  final Function(String)? onChange;
  final Function(String)? onFieldSubmitted;
  final TextEditingController textEditingController;
  final String? hintText;
  final bool readOnly;
  final bool showHintText;
  final bool obscureText;
  final bool enabled;
  final bool isSelectable;
  final ExpressTextFieldStyle style;
  final ExpressTextFieldBorderStyle borderStyle;
  final List<TextInputFormatter>? inputFormatters;

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
    this.inputFormatters,
    this.label,
    this.enabled = true,
    this.isSelectable = false,
    this.onFieldSubmitted,
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
          margin: EdgeInsets.only(top: showHintText == true && hintText != null ? 8 : 0),
          child: TextFormField(
            onFieldSubmitted: onFieldSubmitted,
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
            inputFormatters: inputFormatters,
            style: TextStyle(
                fontSize: 16, color: readOnly && !isSelectable ? appColorBlack.withOpacity(0.4) : appColorBlack, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              hintStyle: const TextStyle(fontSize: 16),
              filled: true,
              hintText: hintText,
              prefixText: prefixText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              isCollapsed: false,
              isDense: true,
              label: label,
              fillColor: enabled ? Colors.white : appColorDarkGray.withOpacity(0.4),
              enabled: enabled,
              border: outlineInputBorder(),
              disabledBorder: disabledInputBorder(),
              focusedErrorBorder: outlineInputBorder(),
              focusedBorder:
                  borderStyle == ExpressTextFieldBorderStyle.showFocusBorder ? focusedBorderBorder(context: context) : outlineInputBorder(),
              enabledBorder: outlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder disabledInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 0, color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(style == ExpressTextFieldStyle.rounded ? 50 : 12)),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 0, color: Colors.grey),
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
