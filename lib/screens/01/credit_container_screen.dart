import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';
import 'package:test_tab_container/screens/01/dummy_screen.dart';

import 'credit_card_data.dart';
import 'credit_card.dart';

import 'credit_card_screen.dart';

class CreditContainerScreen extends StatelessWidget {
  const CreditContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: AspectRatio(
        aspectRatio: 10 / 15,
        child: TabContainer(
          radius: 20,
          tabEdge: TabEdge.top,
          tabCurve: Curves.easeIn,
          transitionBuilder: (child, animation) {
            animation = CurvedAnimation(curve: Curves.easeIn, parent: animation);
            return SlideTransition(
              position: Tween(
                begin: const Offset(0.2, 0.0),
                end: const Offset(0.0, 0.0),
              ).animate(animation),
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          colors: <Color>[
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.2),
          ],
          selectedTextStyle: const TextStyle(fontSize: 12.0),
          unselectedTextStyle: const TextStyle(fontSize: 12.0),
          tabs: _getTabs1(),
          children: _getChildren1(),
        ),
      ),
    );
  }

  ///
  List<Widget> _getChildren1() {
    List<String> bankList = ['bankA', 'bankB', 'bankC', 'bankD', 'bankE'];
    return bankList.map((e) {
      return DummyScreen(bank: e);
    }).toList();
  }

  ///
  List<String> _getTabs1() {
    List<String> bankList = ['bankA', 'bankB', 'bankC', 'bankD', 'bankE'];
    return bankList.map((e) {
      return e;
    }).toList();
  }
}
