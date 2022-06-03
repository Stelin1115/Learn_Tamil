// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/views/Account/AccountPage.dart';
import 'package:learn_tamil/views/Home/HomePage.dart';
import 'package:learn_tamil/views/Module/Module.dart';
import 'package:learn_tamil/views/Setting/SettingPage.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final pages = [HomePage(), ModulePage(), AccountPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: pageIndex,
          builder: (BuildContext context, int value, _) {
            return pages[value];
          }),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: (index) {
          pageIndex.value = index;
        },
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
