import 'package:contra_widgets/src/Models/ChatItemModel.dart';
import 'package:contra_widgets/src/Models/ChatNavbarItemModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ChatItemView.dart';
import 'ChatNavbarItemView.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  int navItem = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: white,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: horizontal24(context),
                child: Column(
                  children: [
                    SizedBox(height: hh(context, 142)),
                    ShadowedField(
                      hintText: "Search with love...",
                      suffix: Padding(
                        padding: EdgeInsets.only(right: 16, top: 10),
                        child: SvgPicture.asset(
                          "search".getIcon,
                          color: black,
                        ),
                      ),
                    ),
                    SizedBox(height: hh(context, 16)),
                    ...List.generate(chatItems.length,
                        (index) => ChatItem(item: chatItems[index])),
                    SizedBox(height: hh(context, 106)),
                  ],
                ),
              ),
            ),
            CustomAppbar(
              title: Text(
                "Chat",
                style: hExtra44(context, black),
              ),
            ),
            Positioned(
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
            ),
          ],
        ),
      ),
    );
  }
}
