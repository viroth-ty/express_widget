import 'package:express_widget/express_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppIndicator<T> extends StatelessWidget {
  final T selectedItem;
  final int selectedIndex;
  final List<T> items;
  final PageController pageController;

  const AppIndicator({
    super.key,
    required this.items,
    required this.pageController,
    required this.selectedItem,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
        activeIndex: selectedIndex,
        count: items.length,
        effect: ExpandingDotsEffect(
          expansionFactor: 2,
          dotHeight: 4,
          dotWidth: 8,
          dotColor: appColorDarkGray,
          activeDotColor: Theme.of(context).primaryColor,
        ),
        onDotClicked: (index) {});
  }
}
