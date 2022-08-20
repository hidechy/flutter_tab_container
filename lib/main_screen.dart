import 'package:flutter/material.dart';

import 'screens/01/credit_container_screen.dart';
import 'screens/03/info_container_screen.dart';
import 'screens/04/news_container_screen.dart';

class TabContainerScreen extends StatelessWidget {
  const TabContainerScreen({Key? key}) : super(key: key);

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1800,
          child: Column(
            children: const [
              Spacer(),
              CreditContainerScreen(),
              Spacer(),
              InfoContainerScreen(),
              Spacer(),
              NewsContainerScreen(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
