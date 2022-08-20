import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'credit_card.dart';

class CreditCardScreen extends StatelessWidget {
  final Color? color;
  final CreditCard data;

  const CreditCardScreen({
    Key? key,
    this.color,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data.bank),
                Icon(
                  data.number[0] == '4'
                      ? FontAwesome5Brands.cc_visa
                      : data.number[0] == '5'
                          ? FontAwesome5Brands.cc_mastercard
                          : FontAwesome5Regular.question_circle,
                  size: 36,
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Text(
                  data.number,
                  style: const TextStyle(fontSize: 22.0),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Exp.'),
                const SizedBox(width: 4),
                Text(data.expiration),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Text(
                  data.name,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
