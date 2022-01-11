import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  ActionButton({required this.icon, required this.title});

  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          this.icon,
          color: Colors.blueAccent,
        ),
        const SizedBox(height: 10.0,),
        Text(
          this.title,
          style: const TextStyle(
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
