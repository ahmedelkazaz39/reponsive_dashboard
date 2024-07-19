import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.desktopLayout,
      required this.tabletLayout});

  final WidgetBuilder mobileLayout, desktopLayout, tabletLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return desktopLayout(context);
      } else if (constraints.maxWidth > 600) {
        return tabletLayout(context);
      }
      return mobileLayout(context);
    });
  }
}

//! this is the reponsive text layout

double getResponsiveFontSize(BuildContext context,
    {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * baseFontSize;
  double lowerLimit = baseFontSize * .80;
  double upperLimit = baseFontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth > 900) {
    return screenWidth / 1000;
  } else if (screenWidth > 600) {
    return screenWidth / 700;
  }
  return screenWidth / 400;
}
