import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'package:flutter95_ui/model/friends.dart';
import 'package:flutter95_ui/widgets/buttons.dart';
import 'package:flutter95_ui/widgets/custom_bottom_nav.dart';
import 'package:flutter95_ui/widgets/tool_bar.dart';

class FindFriends extends StatefulWidget {
  const FindFriends({super.key});

  @override
  State<FindFriends> createState() => _FindFriendsState();
}

class _FindFriendsState extends State<FindFriends> {
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
                      const Text(
                        'Friends Requests',
                        style: Flutter95.textStyle,
                      ),
                      ButtonWidgets.button95WithText('Add'),
                    ],
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListView.builder(
                        itemCount: myFriends.length,
                        itemBuilder: (context, index) {
                          final myFriend = myFriends[index];
                          return Container(
                            height: 60,
                            width: double.infinity,
                            // color: Colors.red,
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/${myFriend.image}',
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          myFriend.name,
                                          style: Flutter95.textStyle,
                                        ),
                                        Text(
                                          '${myFriend.mutualFriends} mutual friends',
                                          style: Flutter95.disabledTextStyle,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    ButtonWidgets.button95WithText('Confirm'),
                                    ButtonWidgets.button95WithText('Delete')
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
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
