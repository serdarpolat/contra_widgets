import 'package:contra_widgets/src/Models/ChatNavbarItemModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

import 'ChatNavbarItemView.dart';

class ChatNavbar extends StatefulWidget {
  const ChatNavbar({Key? key}) : super(key: key);

  @override
  _ChatNavbarState createState() => _ChatNavbarState();
}

class _ChatNavbarState extends State<ChatNavbar> {
  int navItem = 2;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: hh(context, 90),
        child: Row(
          children: List.generate(chatNavbarItems.length, (index) {
            var item = chatNavbarItems[index];
            return ChatNavbarItem(
              item: item,
              active: item.id == navItem,
              onTap: () {
                setState(() {
                  navItem = item.id;
                });
              },
            );
          }),
        ),
        decoration: BoxDecoration(
          color: white,
          border: Border(
            top: BorderSide(color: black, width: hh(context, 2)),
          ),
        ),
      ),
    );
  }
}
