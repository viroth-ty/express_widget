import 'package:express_widget/express_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpressCheckBox extends StatelessWidget {
  final String title;
  final String? subTitle;
  final VoidCallback? onTap;
  final bool isEnabled;
  final bool isSelected;
  final Color activeColor;

  const ExpressCheckBox({
    super.key,
    this.isEnabled = true,
    this.onTap,
    required this.activeColor,
    required this.inActiveColor,
    this.isSelected = false,
    required this.title,
    this.subTitle,
  });

  final Color inActiveColor;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isEnabled ? 1 : 0.3,
      child: GestureDetector(
        onTap: onTap,
        child: IntrinsicWidth(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              border: Border.all(color: isSelected ? activeColor : inActiveColor),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: subTitleTextStyle(textColor: isSelected ? activeColor : inActiveColor, fontWeight: FontWeight.w500),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Builder(
                        builder: (context) {
                          if (subTitle != null) {
                            return IntrinsicWidth(
                              child: Text(
                                "$subTitle}",
                                style: subTitleTextStyle(
                                  textColor: isSelected ? activeColor : inActiveColor,
                                  fontSize: 10,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 12,
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  child: Icon(
                    CupertinoIcons.checkmark_alt_circle_fill,
                    color: isSelected ? activeColor : inActiveColor,
                    size: 20,
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
