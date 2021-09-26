import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
    this.leading,
    this.trailing,
    this.title,
    this.mainAxisAlignment,
    this.bordered = false,
  }) : super(key: key);
  final Widget? leading;
  final Widget? trailing;
  final Widget? title;
  final MainAxisAlignment? mainAxisAlignment;
  final bool? bordered;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context),
      height: hh(context, 118),
      child: Padding(
        padding: EdgeInsets.only(left: ww(context, 24), right: ww(context, 24)),
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
          children: [
            leading ?? Container(),
            title ?? Container(),
            trailing ??
                Container(
                  width: ww(context, 60),
                ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: white,
        border: Border(
          bottom: BorderSide(
            color: bordered! ? black : white,
            width: hh(context, 2),
          ),
        ),
      ),
    );
  }
}
