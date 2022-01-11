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
              0.5,0.5
            ],
            colors: [
              Color(0xff5EE8C5),
              Color(0xFF30BAD6),
            ]
          ),
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
        PersonalizedBackground(),
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

class PersonalizedBackground extends StatelessWidget {
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

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF30BAD6),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Bienvenido'),
        ),
      ),
    );
  }
}


