import 'package:contra_widgets/src/Models/MenuButtonModel.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    required this.item,
    required this.active,
    this.onTap,
    this.alignment,
  }) : super(key: key);
  final MenuButtonModel item;
  final bool active;
  final Function()? onTap;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: hh(context, 74),
          width: double.infinity,
          padding: horizontal24(context),
          alignment: alignment ?? Alignment.centerLeft,
          child: Text(
            item.title,
            style: hExtra44(context, active ? red : black),
          ),
        ),
      ),
    );
  }
}
