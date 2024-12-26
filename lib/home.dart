import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:refreshpull/components/container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// let's create a list of widgets(containers)

List<Widget> containerList = [
  MyContainer(),
  MyContainer(),
  MyContainer(),
  MyContainer(),
  MyContainer(),
  MyContainer(),
  MyContainer(),
  MyContainer(),
];

Future<void> onRefresh() async {
  // fetch something
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7C444F),

      // now lets create a list view to view those containers

      // lets wrap the listview builder in the liquid pull to refresh widget

      body: LiquidPullToRefresh(
        // let's style the widget
        color: Color(0xFFE16A54),
        backgroundColor: Color(0xFF7C444F),
        height: 300,
        animSpeedFactor: 3,
        onRefresh: onRefresh,
        child: ListView.builder(
          itemCount: containerList.length,
          itemBuilder: (context, index) {
            return containerList[index];
          },
        ),
      ),
    );
  }
}

// Thanks for watching 
