import 'package:flutter/material.dart';

double ww(BuildContext context, double size) =>
    (MediaQuery.of(context).size.width * size) / 375;
double hh(BuildContext context, double size) =>
    (MediaQuery.of(context).size.height * size) / 812;

extension DoubleExt on double {
  double ww(Size s) => (s.width * this) / 375;
}

Size s(BuildContext context) => MediaQuery.of(context).size;
double w(BuildContext context) => MediaQuery.of(context).size.width;
double h(BuildContext context) => MediaQuery.of(context).size.height;

double w2(BuildContext context) => ww(context, 2);
double w4(BuildContext context) => ww(context, 4);
double w8(BuildContext context) => ww(context, 8);
double w12(BuildContext context) => ww(context, 12);
double w16(BuildContext context) => ww(context, 16);
double w24(BuildContext context) => ww(context, 24);

double h2(BuildContext context) => hh(context, 2);
double h4(BuildContext context) => hh(context, 4);
double h8(BuildContext context) => hh(context, 8);
double h12(BuildContext context) => hh(context, 12);
double h16(BuildContext context) => hh(context, 16);
double h24(BuildContext context) => hh(context, 24);
