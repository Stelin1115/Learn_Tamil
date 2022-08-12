// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/Responsive/Responsive.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/views/Account/AccountPage.dart';
import 'package:learn_tamil/views/Home/HomePage.dart';
import 'package:learn_tamil/views/Module/ModulePage.dart';
import 'package:learn_tamil/views/Setting/SettingPage.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(2);

  final pagesmobile = [HomePage(), ModulePage(), AccountPage(), SettingPage()];

  final pages = [HomePage(), AccountPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
            mobile: ValueListenableBuilder(
                valueListenable: pageIndex,
                builder: (BuildContext context, int value, _) {
                  return pagesmobile[value];
                }),
            tabletpotrait: ValueListenableBuilder(
                valueListenable: pageIndex,
                builder: (BuildContext context, int value, _) {
                  return pages[value];
                }),
            tabletlandscape: ValueListenableBuilder(
                valueListenable: pageIndex,
                builder: (BuildContext context, int value, _) {
                  return pages[value];
                }),
            desktop: ValueListenableBuilder(
                valueListenable: pageIndex,
                builder: (BuildContext context, int value, _) {
                  return pages[value];
                })),
        bottomNavigationBar: Responsive(
          mobile: _BottomNavigationBarMobile(
            onItemSelected: (index) {
              pageIndex.value = index;
            },
          ),
          tabletpotrait: _BottomNavigationBar(
            onItemSelected: (index) {
              pageIndex.value = index;
            },
          ),
          tabletlandscape: _BottomNavigationBar(
            onItemSelected: (index) {
              pageIndex.value = index;
            },
          ),
          desktop: _BottomNavigationBar(
            onItemSelected: (index) {
              pageIndex.value = index;
            },
          ),
        ));
  }
}

class _BottomNavigationBarMobile extends StatefulWidget {
  _BottomNavigationBarMobile({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<_BottomNavigationBarMobile> createState() =>
      _BottomNavigationBarMobileState();
}

class _BottomNavigationBarMobileState
    extends State<_BottomNavigationBarMobile> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      child: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 16, right: 8, left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavigationBarItem(
                  lable: 'Home',
                  isSelected: (selectedIndex == 0),
                  icon: CupertinoIcons.home,
                  index: 0,
                  onTap: handleItemSelected),
              _NavigationBarItem(
                  lable: 'Module',
                  isSelected: (selectedIndex == 1),
                  icon: CupertinoIcons.book,
                  index: 1,
                  onTap: handleItemSelected),
              _NavigationBarItem(
                  lable: 'Account',
                  isSelected: (selectedIndex == 2),
                  icon: CupertinoIcons.person,
                  index: 2,
                  onTap: handleItemSelected),
              _NavigationBarItem(
                  lable: 'Settings',
                  isSelected: (selectedIndex == 3),
                  icon: CupertinoIcons.settings,
                  index: 3,
                  onTap: handleItemSelected),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  _BottomNavigationBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      child: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 16, right: 8, left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavigationBarItem(
                  lable: 'Home',
                  isSelected: (selectedIndex == 0),
                  icon: CupertinoIcons.home,
                  index: 0,
                  onTap: handleItemSelected),
              _NavigationBarItem(
                  lable: 'Account',
                  isSelected: (selectedIndex == 1),
                  icon: CupertinoIcons.person,
                  index: 1,
                  onTap: handleItemSelected),
              _NavigationBarItem(
                  lable: 'Settings',
                  isSelected: (selectedIndex == 2),
                  icon: CupertinoIcons.settings,
                  index: 2,
                  onTap: handleItemSelected),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  final ValueChanged<int> onTap;
  final String lable;
  final IconData icon;
  final int index;
  final bool isSelected;
  _NavigationBarItem(
      {Key? key,
      required this.lable,
      required this.icon,
      required this.index,
      required this.onTap,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        width: 60,
        height: 50,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 25, color: isSelected ? kPrimaryRedColor : null),
            Text(
              lable,
              style: isSelected
                  ? TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: kPrimaryRedColor)
                  : TextStyle(fontSize: 12, fontFamily: 'Poppins'),
            )
          ],
        ),
      ),
    );
  }
}
