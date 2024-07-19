import 'package:flutter/material.dart';
import 'package:responsive_dashbord/widgets/adaptive_layout.dart';
import 'package:responsive_dashbord/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        desktopLayout: (context) => const DashboardDesktopLayout(),
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
      ),
    );
  }
}
