import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:tab_container/tab_container.dart';

class InfoContainerScreen extends StatelessWidget {
  const InfoContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TabContainer(
          color: Colors.redAccent,
          tabEdge: TabEdge.right,
          childPadding: const EdgeInsets.all(20.0),
          tabs: _getTabs3(context),
          isStringTabs: false,
          children: _getChildren3(context),
        ),
      ),
    );
  }

  ///
  List<Widget> _getChildren3(BuildContext context) {
    return <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Info', style: Theme.of(context).textTheme.headline5),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non ex ac metus facilisis pulvinar. In id nulla tellus. Donec vehicula iaculis lacinia. Fusce tincidunt viverra nisi non ultrices. Donec accumsan metus sed purus ullamcorper tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Documents', style: Theme.of(context).textTheme.headline5),
          const Spacer(flex: 2),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Divider(thickness: 1),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Document 1'),
                ),
                Divider(thickness: 1),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Document 2'),
                ),
                Divider(thickness: 1),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Document 3'),
                ),
                Divider(thickness: 1),
              ],
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Profile', style: Theme.of(context).textTheme.headline5),
          const Spacer(flex: 3),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('username:'),
                      Text('email:'),
                      Text('birthday:'),
                    ],
                  ),
                ),
                const Spacer(),
                Flexible(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('John Doe'),
                      Text('john.doe@email.com'),
                      Text('1/1/1985'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Settings', style: Theme.of(context).textTheme.headline5),
          const Spacer(flex: 1),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SwitchListTile(
                  title: const Text('Darkmode'),
                  value: false,
                  onChanged: (v) {},
                  secondary: const Icon(Ionicons.moon),
                ),
                SwitchListTile(
                  title: const Text('Analytics'),
                  value: false,
                  onChanged: (v) {},
                  secondary: const Icon(Ionicons.analytics),
                ),
              ],
            ),
          ),
        ],
      ),
    ];
  }

  ///
  List<Widget> _getTabs3(BuildContext context) => <Widget>[
        const Icon(Ionicons.information_circle),
        const Icon(Ionicons.document_text),
        const Icon(Ionicons.person),
        const Icon(Ionicons.settings),
      ];
}
