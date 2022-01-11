import 'package:dessing_app/widgets/action_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/landscape.jpg'),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListTile(
              title: const Text('Mascoen lake Campground'),
              subtitle: const Text('Understanding, Switzerdalnd'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, color: Colors.orange,),
                  Text('41'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ActionButton(icon: Icons.phone, title: 'CALL'),
                ActionButton(icon: Icons.accessible_forward_rounded, title: 'ROUTE'),
                ActionButton(icon: Icons.share, title: 'SHARE'),
              ],
            )
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: const Text('Lorem voluptate eu deserunt Lorem eu do ea. Eiusmod aute irure deserunt quis. Velit proident pariatur et cupidatat aliquip velit pariatur sint deserunt et aliqua incididunt. In reprehenderit sint qui sit ullamco pariatur. Nostrud adipisicing Lorem commodo irure cupidatat enim incididunt nulla. Sit in veniam mollit quis ut ullamco incididunt nisi nulla sunt.'),
          ),
        ],
      ),
    );
  }
}