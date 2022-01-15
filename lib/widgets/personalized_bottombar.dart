import 'package:flutter/material.dart';

class PersonalizedBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // To do not show selected labels
      showSelectedLabels: false,
      // To do not show selected labels
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(
          label: 'Calendar',
          icon: Icon(
            Icons.calendar_today_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Graphs',
          icon: Icon(
            Icons.graphic_eq_rounded
          ),
        ),
        BottomNavigationBarItem(
          label: 'Users',
          icon: Icon(
            Icons.supervised_user_circle_outlined,
          ),
        ),
      ],
    );
  }
}
