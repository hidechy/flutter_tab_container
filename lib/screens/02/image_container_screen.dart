import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:tab_container/tab_container.dart';

class ImageContainerScreen extends StatefulWidget {
  const ImageContainerScreen({Key? key}) : super(key: key);

  @override
  State<ImageContainerScreen> createState() => _ImageContainerScreenState();
}

class _ImageContainerScreenState extends State<ImageContainerScreen> {
//  late final TabContainerController _controller;

  ///
  @override
  void initState() {
    // _controller = TabContainerController(length: 3);
    //
    // _controller.jumpTo(0);

    super.initState();
  }

  ///
  @override
  void dispose() {
//    _controller.dispose();
    super.dispose();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 330.0,
          child: TabContainer(
//            controller: _controller,
            radius: 0,
            color: Colors.black,
            tabDuration: const Duration(seconds: 0),
            tabs: _getTabs2(),
            children: _getChildren2(),
            selectedTextStyle: const TextStyle(color: Colors.white),
            unselectedTextStyle: const TextStyle(color: Colors.black),
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     IconButton(
        //       onPressed: () => _controller.prev(),
        //       icon: const Icon(Ionicons.arrow_back),
        //     ),
        //     IconButton(
        //       onPressed: () => _controller.next(),
        //       icon: const Icon(Ionicons.arrow_forward),
        //     ),
        //   ],
        // ),
      ],
    );
  }

  ///
  List<Widget> _getChildren2() {
    return <Widget>[
      Image.asset('assets/images/01.jpg'),
      Image.asset('assets/images/02.jpg'),
      Image.asset('assets/images/03.jpg'),
    ];
  }

  ///
  List<String> _getTabs2() {
    return <String>['Image 1', 'Image 2', 'Image 3'];
  }
}
