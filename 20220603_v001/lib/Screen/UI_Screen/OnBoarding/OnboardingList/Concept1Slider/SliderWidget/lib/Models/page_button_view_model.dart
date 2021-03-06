import 'package:biggest_kit_flutter_null_safety/Screen/UI_Screen/OnBoarding/OnboardingList/Concept1Slider/SliderWidget/lib/Constants/constants.dart';

/// This is view model for the skip and done buttons.

class PageButtonViewModel {
  final double? slidePercent;
  final int? totalPages;
  final int? activePageIndex;
  final SlideDirection? slideDirection;

  PageButtonViewModel({
    this.slidePercent,
    this.totalPages,
    this.activePageIndex,
    this.slideDirection,
  });
}
