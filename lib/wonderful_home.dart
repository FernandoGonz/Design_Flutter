import 'package:dessing_app/widgets/card_table.dart';
import 'package:dessing_app/widgets/page_title.dart';
import 'package:dessing_app/widgets/personalized_background.dart';
import 'package:dessing_app/widgets/personalized_bottombar.dart';
import 'package:flutter/material.dart';

class WonderfulHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PersonalizedBackground(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: PersonalizedBottomBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
