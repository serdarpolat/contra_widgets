import 'package:contra_widgets/src/Models/ChatNavbarItemModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

class ChatNavbarItem extends StatelessWidget {
  const ChatNavbarItem({
    Key? key,
    required this.item,
    required this.active,
    this.onTap,
  }) : super(key: key);
  final ChatNavbarItemModel item;
  final bool active;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: white,
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: double.infinity,
          width: w(context) / 4,
          child: Column(
            children: [
              SizedBox(height: hh(context, 16)),
              AnimatedContainer(
                duration: Duration(milliseconds: 240),
                width: hh(context, 24),
                height: hh(context, 24),
                decoration: BoxDecoration(
                  color: active ? green : grey100,
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: active ? black : grey, width: hh(context, 2)),
                ),
              ),
              SizedBox(height: hh(context, 10)),
              Text(
                item.name,
                style: displayExtrabold12(context, active ? black : grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
