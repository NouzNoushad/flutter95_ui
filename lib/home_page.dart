import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:flutter95_ui/model/friends.dart';
import 'package:flutter95_ui/widgets/buttons.dart';
import 'package:flutter95_ui/widgets/custom_bottom_nav.dart';
import 'package:flutter95_ui/widgets/tool_bar.dart';

class Flutter95Home extends StatefulWidget {
  const Flutter95Home({super.key});

  @override
  State<Flutter95Home> createState() => _Flutter95HomeState();
}

class _Flutter95HomeState extends State<Flutter95Home> {
  List<Friends> myFriends = myFriendsList;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold95(
      title: 'Facebook',
      toolbar: Toolbar95(
        actions: ToolBar.actions,
      ),
      body: Container(
        height: size.height / 1.13,
        width: size.width,
        // color: Colors.amber,
        child: Stack(
          children: [
            Elevation95(
              type: Elevation95Type.down,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidgets.button95WithIcon(Icons.camera_alt, () {}),
                      SizedBox(
                        width: size.width / 1.8,
                        child: const TextField95(),
                      ),
                      ButtonWidgets.button95WithText('Find now'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Elevation95(
                    type: Elevation95Type.down,
                    child: Container(
                      width: size.width,
                      height: 90,
                      // color: Colors.yellow,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: myFriends.length,
                        itemBuilder: (context, index) {
                          final myFriend = myFriends[index];
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            // color: Colors.red,
                            child: Column(
                              children: [
                                Elevation95(
                                  type: Elevation95Type.up,
                                  child: Image.asset(
                                    'assets/${myFriend.image}',
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  myFriend.name,
                                  style: Flutter95.textStyle,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            flex: 2,
                            child: TextField95(),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWidgets.button95WithText('Post now'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ButtonWidgets.button95WithText('Live'),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWidgets.button95WithText('Photo'),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWidgets.button95WithText('Check out'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    height: 20,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Pokedex',
                                style: Flutter95.textStyle,
                              ),
                              Text(
                                '29 mins',
                                style: Flutter95.disabledTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Torterra is a Grass & Ground Pokemon which evolves from Grotle. It is vulnerable to ice, flying, bug and fire moves. Torterra strongest moveset is Razor leaf & Frenzy Plant',
                        style: Flutter95.textStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/Torterra.png',
                        height: 180,
                        width: size.width,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 0,
              child: CustomBottomNavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
