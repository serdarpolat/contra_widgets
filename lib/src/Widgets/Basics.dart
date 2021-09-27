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

TextStyle hExtra44(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 44),
      color: color,
      fontWeight: FontWeight.w900,
      height: 1.25,
    );

TextStyle hExtra36(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 36),
      color: color,
      fontWeight: FontWeight.w900,
      height: 1.1111,
    );

TextStyle hExtra27(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 27),
      color: color,
      fontWeight: FontWeight.w900,
      height: 1.111,
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

TextStyle displayExtraBold24(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 24),
      color: color,
      fontWeight: FontWeight.w900,
      height: 1.333,
    );

TextStyle displayBold11(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 11),
      color: color,
      fontWeight: FontWeight.w700,
      height: 1.45,
    );

TextStyle displayBold12(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 12),
      color: color,
      fontWeight: FontWeight.w700,
      height: 1.45,
    );

TextStyle displayExtrabold12(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 12),
      color: color,
      fontWeight: FontWeight.w900,
      height: 1.45,
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

TextStyle displayBold15(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 15),
      color: color,
      fontWeight: FontWeight.w700,
      height: 1.25,
    );

TextStyle displayMedium15(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 15),
      color: color,
      fontWeight: FontWeight.w500,
      height: 1.25,
    );

TextStyle displayMedium17(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 17),
      color: color,
      fontWeight: FontWeight.w500,
      height: 1.333,
    );

TextStyle displayMedium21(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 21),
      color: color,
      fontWeight: FontWeight.w500,
      height: 1.333,
    );

TextStyle displayBold17(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 17),
      color: color,
      fontWeight: FontWeight.w700,
      height: 1.411764,
    );

TextStyle displayExtraBold17(BuildContext context, Color color) => TextStyle(
      inherit: true,
      fontSize: hh(context, 17),
      color: color,
      fontWeight: FontWeight.w900,
      height: 1.411764,
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

BoxBorder baseBorder(BuildContext context) => Border.all(
      color: black,
      width: hh(context, 2),
    );

Decoration baseDecoration(BuildContext context,
        {Color? bgColor, BoxShadow? boxShadow}) =>
    BoxDecoration(
      color: bgColor ?? white,
      borderRadius: BorderRadius.circular(hh(context, 16)),
      border: baseBorder(context),
      boxShadow: [
        boxShadow ??
            BoxShadow(
              color: Colors.transparent,
            ),
      ],
    );

Widget basicCircle(BuildContext context, {double? size, Color? bgColor}) =>
    Container(
      width: size ?? h24(context),
      height: size ?? h24(context),
      decoration: BoxDecoration(
        color: bgColor ?? yellow,
        shape: BoxShape.circle,
        border: baseBorder(context),
      ),
    );
