import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              backgroundColor: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SingleCard(
              backgroundColor: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              backgroundColor: Colors.purple,
              icon: Icons.shop,
              text: 'Shopping',
            ),
            _SingleCard(
              backgroundColor: Colors.purpleAccent,
              icon: Icons.cloud,
              text: 'Bill',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              backgroundColor: Colors.yellow,
              icon: Icons.print_disabled,
              text: 'Printer',
            ),
            _SingleCard(
              backgroundColor: Colors.cyan,
              icon: Icons.group_sharp,
              text: 'Groups',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  _SingleCard({
    required this.backgroundColor,
    required this.icon,
    required this.text,
  });

  Color backgroundColor;
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.backgroundColor,
                  child: Icon(this.icon, size: 35.0, color: Colors.white,),
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  this.text,
                  style: TextStyle(
                    color: this.backgroundColor
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
