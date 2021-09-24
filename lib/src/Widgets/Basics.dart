import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

Widget insetSeperator(BuildContext context, Color color) => Container(
      width: ww(context, 327),
      color: color,
      height: hh(context, 2),
    );

Widget fullSeperator(BuildContext context, Color color) => Container(
      width: MediaQuery.of(context).size.width,
      color: color,
      height: hh(context, 2),
    );

EdgeInsets all24(BuildContext context) => EdgeInsets.all(ww(context, 24));

EdgeInsets horizontal24(BuildContext context) =>
    EdgeInsets.symmetric(horizontal: ww(context, 24));

EdgeInsets left24(BuildContext context) =>
    EdgeInsets.only(left: ww(context, 24));

TextStyle h44(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 44),
      color: color,
      fontWeight: FontWeight.w900,
      height: 1.25,
    );

TextStyle h36(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 36),
      color: color,
      fontWeight: FontWeight.w900,
      height: 1.1111,
    );

TextStyle display21(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 21),
      color: color,
      fontWeight: FontWeight.w500,
      height: 1.333,
    );

TextStyle displayBold21(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 21),
      color: color,
      fontWeight: FontWeight.w700,
      height: 1.333,
    );

TextStyle displayExtraBold21(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 21),
      color: color,
      fontWeight: FontWeight.w900,
      height: 1.333,
    );

TextStyle displayMedium13(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 13),
      color: color,
      fontWeight: FontWeight.w500,
      height: 1.333,
    );

TextStyle displayBold13(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 13),
      color: color,
      fontWeight: FontWeight.w700,
      height: 1.45,
    );

TextStyle displayMedium17(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 17),
      color: color,
      fontWeight: FontWeight.w500,
      height: 1.333,
    );

BoxShadow shadow200(BuildContext context) => BoxShadow(
      color: black,
      offset: Offset(0, hh(context, 2)),
      blurRadius: 0,
    );

BoxShadow shadow400(BuildContext context) => BoxShadow(
      color: black,
      offset: Offset(0, hh(context, 4)),
      blurRadius: 0,
    );
