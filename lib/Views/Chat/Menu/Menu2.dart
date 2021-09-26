import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'MenuLinks.dart';

class Menu2 extends StatelessWidget {
  const Menu2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              leading: Text(
                "Contra",
                style: displayExtraBold24(context, black),
              ),
              trailing: Container(
                child: SvgPicture.asset("cross".getIcon),
              ),
            ),
            SizedBox(height: hh(context, 48)),
            Links(),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: h24(context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Follow",
                    style: displayExtraBold21(context, grey),
                  ),
                  SizedBox(height: hh(context, 16)),
                  Row(
                    children: [
                      Container(
                        child: SvgPicture.asset("instagram".getIcon),
                      ),
                      SizedBox(width: ww(context, 24)),
                      Container(
                        child: SvgPicture.asset("facebook".getIcon),
                      ),
                      SizedBox(width: ww(context, 24)),
                      Container(
                        child: SvgPicture.asset("twitter".getIcon),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: hh(context, 24)),
          ],
        ),
      ),
    );
  }
}
