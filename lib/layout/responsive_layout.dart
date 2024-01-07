import 'package:flutter/material.dart';
import 'dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        switch (constraints.maxWidth) {
          case < mobileWidth:
            return mobileScaffold;
          case < tabletWidth:
            return tabletScaffold;
          default:
            return desktopScaffold;
        }
      },
    );
  }
}
