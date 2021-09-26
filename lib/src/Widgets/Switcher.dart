import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

class Switcher extends StatefulWidget {
  const Switcher({
    Key? key,
  }) : super(key: key);

  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          value = !value;
        });
      },
      child: Container(
        width: ww(context, 60),
        height: hh(context, 36),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 240),
              width: ww(context, 60),
              height: hh(context, 36),
              decoration: BoxDecoration(
                color: value ? yellow : grey50,
                borderRadius: BorderRadius.circular(hh(context, 36)),
                border: baseBorder(context),
                boxShadow: [
                  shadow200(context),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 240),
              top: 0,
              left: value ? 36 : 0,
              child: Container(
                width: hh(context, 36),
                height: hh(context, 36),
                child: Center(
                  child: Container(
                    width: hh(context, 14),
                    height: hh(context, 14),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(hh(context, 36)),
                      border: baseBorder(context),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(hh(context, 36)),
                  border: baseBorder(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
