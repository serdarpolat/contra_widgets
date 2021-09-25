import 'package:contra_widgets/src/Models/ChatItemModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ChatItemModel item;

  @override
  Widget build(BuildContext context) {
    var msg = item.message.length > 29
        ? item.message.substring(0, 27) + "..."
        : item.message;
    return Container(
      width: w(context),
      height: hh(context, 98),
      padding: EdgeInsets.symmetric(vertical: hh(context, 25)),
      child: Row(
        children: [
          Container(
            height: hh(context, 48),
            width: hh(context, 48),
            child: Center(
              child: Text(
                item.sender[0],
                style: displayExtraBold24(
                    context, item.unreadcount > 0 ? black : white),
              ),
            ),
            decoration: BoxDecoration(
              color: item.unreadcount > 0 ? yellow : yellow300,
              shape: BoxShape.circle,
              border: Border.all(color: black, width: hh(context, 2)),
            ),
          ),
          SizedBox(width: ww(context, 12)),
          Expanded(
              child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.sender,
                        style: displayExtraBold21(context, black),
                      ),
                      Text(
                        msg,
                        style: displayMedium15(context, grey),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        item.time,
                        style: displayBold11(context, grey200),
                      ),
                      SizedBox(height: 6),
                      if (item.unreadcount > 0)
                        Container(
                          width: ww(context, 16),
                          height: ww(context, 16),
                          child: Center(
                            child: Text(
                              "${item.unreadcount}",
                              style: displayBold12(context, white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: red,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
