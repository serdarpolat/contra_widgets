import 'package:contra_widgets/src/Models/MenuButtonModel.dart';
import 'package:flutter/material.dart';

import 'MenuButtonView.dart';

class Links extends StatefulWidget {
  const Links({Key? key, this.alignment}) : super(key: key);
  final AlignmentGeometry? alignment;

  @override
  _LinksState createState() => _LinksState();
}

class _LinksState extends State<Links> {
  int itemId = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: List.generate(
          menuItems.length,
          (index) {
            var i = menuItems[index];
            return MenuButton(
              item: i,
              active: i.id == itemId,
              alignment: widget.alignment ?? Alignment.centerLeft,
              onTap: () {
                setState(() {
                  itemId = i.id;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
