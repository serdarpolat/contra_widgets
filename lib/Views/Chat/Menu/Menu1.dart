import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:contra_widgets/src/Widgets/CustomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'MenuLinks.dart';

class Menu1 extends StatelessWidget {
  const Menu1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: white,
        child: Column(
          children: [
            CustomAppbar(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              leading: Container(
                child: SvgPicture.asset("cross".getIcon),
              ),
              title: Text(
                "Contra",
                style: displayExtraBold24(context, black),
              ),
              trailing: SizedBox(width: ww(context, 24)),
            ),
            SizedBox(height: hh(context, 48)),
            Links(
              alignment: Alignment.center,
            ),
            Spacer(),
            Text(
              "contra",
              style: displayExtraBold21(context, black),
            ),
            Text(
              "1.0",
              style: displayMedium17(context, black),
            ),
            SizedBox(height: hh(context, 24)),
          ],
        ),
      ),
    );
  }
}
