import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.5,
                0.5
              ],
              colors: [
                Color(0xff5EE8C5),
                Color(0xFF30BAD6),
              ]),
        ),
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _PersonalizedBackground(),
        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            '11',
            style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const Text(
            'Miércoles',
            style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(color: Colors.transparent),
          ),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.white,
            size: 100.0,
          ),
        ],
      ),
    );
  }
}

class _PersonalizedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image.asset('assets/scroll-1.png'),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  bool _myValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF30BAD6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PersonalizedButton(
            label: 'Bienvenido',
            action: () {
              print('Something important');
            },
          ),
          PersonalizedCheker(
            value: this._myValue,
            action: (bool? value) {
              setState(() {
                this._myValue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}

class PersonalizedCheker extends StatelessWidget {
  bool value;
  Function(bool?) action;

  PersonalizedCheker({
    required this.value,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: this.value, onChanged: this.action);
  }
}

class PersonalizedButton extends StatelessWidget {
  String label;
  VoidCallback action;

  PersonalizedButton({
    required this.label,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.action,
      child: Text(this.label),
    );
  }
}
