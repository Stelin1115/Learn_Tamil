import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final mobile;
  final tabletpotrait;
  final tabletlandscape;
  final desktop;

  const Responsive({
    Key? key,
    this.mobile,
    this.tabletpotrait,
    this.tabletlandscape,
    this.desktop, bottomNavigationBar,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  // static bool isMobile(BuildContext context) =>
  //     MediaQuery.of(context).size.width < 650;

  // static bool isTablet(BuildContext context) =>
  //     MediaQuery.of(context).size.width < 1100 &&
  //     MediaQuery.of(context).size.width >= 650;

  // static bool isDesktop(BuildContext context) =>
  //     MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1300 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1400) {
          return desktop;
        }
        // If width it less then 1300 and more then 1000 we consider it as tabletlandscape
        else if (constraints.maxWidth >= 1000) {
          return tabletlandscape;
        }
        // If width it less then 1000 and more then 650 we consider it as tabletpotrait
        else if (constraints.maxWidth >= 650) {
          return tabletpotrait;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}