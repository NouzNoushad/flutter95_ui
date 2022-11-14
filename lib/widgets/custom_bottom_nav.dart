import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter95_ui/find_friends.dart';
import 'package:flutter95_ui/home_page.dart';
import 'package:flutter95_ui/widgets/buttons.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ButtonWidgets.button95WithIcon(Icons.dashboard_outlined, () {
              // navigate home page
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Flutter95Home()));
            }),
          ),
          Expanded(
            flex: 1,
            child: ButtonWidgets.button95WithIcon(Icons.groups_outlined, () {
              // navigate friends page
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const FindFriends()));
            }),
          ),
          Expanded(
            flex: 1,
            child: ButtonWidgets.button95WithIcon(Icons.event, () {}),
          ),
          Expanded(
            flex: 1,
            child: ButtonWidgets.button95WithIcon(Icons.public, () {}),
          ),
          Expanded(
            flex: 1,
            child: ButtonWidgets.button95WithIcon(Icons.settings, () {}),
          ),
        ],
      ),
    );
  }
}
