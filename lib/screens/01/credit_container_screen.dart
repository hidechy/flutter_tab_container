import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

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
        aspectRatio: 10 / 8,
        child: TabContainer(
          radius: 20,
          tabEdge: TabEdge.bottom,
          tabCurve: Curves.easeIn,
          transitionBuilder: (child, animation) {
            animation =
                CurvedAnimation(curve: Curves.easeIn, parent: animation);
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
          colors: const <Color>[
            Color(0xfffa86be),
            Color(0xffa275e3),
            Color(0xff9aebed),
          ],
          selectedTextStyle: const TextStyle(fontSize: 20.0),
          unselectedTextStyle: const TextStyle(fontSize: 13.0),
          tabs: _getTabs1(),
          children: _getChildren1(),
        ),
      ),
    );
  }

  ///
  List<Widget> _getChildren1() {
    List<CreditCard> cards = kCreditCards
        .map(
          (e) => CreditCard.fromJson(e),
        )
        .toList();

    return cards.map((e) => CreditCardScreen(data: e)).toList();
  }

  ///
  List<String> _getTabs1() {
    List<CreditCard> cards = kCreditCards
        .map(
          (e) => CreditCard.fromJson(e),
        )
        .toList();

    return cards
        .map(
          (e) => '*${e.number.substring(
            e.number.length - 4,
            e.number.length,
          )}',
        )
        .toList();
  }
}
