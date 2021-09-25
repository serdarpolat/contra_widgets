import 'package:contra_widgets/src/Models/ChatBubbleModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.item,
  }) : super(key: key);
  final ChatBubbleModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context),
      margin: EdgeInsets.only(
          bottom: !item.isMine ? hh(context, 8) : hh(context, 42)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          item.mine
              ? Container()
              : !item.isMine
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: ww(context, 54),
                        height: ww(context, 54),
                        child: SvgPicture.asset(
                          "avatar-2".getSvgImg,
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(
                          color: yellow,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: black,
                            width: hh(context, 2),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      width: ww(context, 54),
                    ),
          Expanded(
            child: Container(
              alignment:
                  item.mine ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(ww(context, 16)),
                margin: EdgeInsets.only(left: ww(context, 16)),
                constraints: BoxConstraints(maxWidth: ww(context, 251)),
                child: Text(
                  item.message,
                  style: displayBold17(context, black),
                ),
                decoration: BoxDecoration(
                  color: item.mine ? green : yellow,
                  borderRadius: BorderRadius.circular(hh(context, 16)),
                  border: Border.all(
                    color: black,
                    width: hh(context, 2),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
