import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

class BorderedButton extends StatelessWidget {
  const BorderedButton({
    Key? key,
    required this.bgColor,
    required this.borderColor,
    this.prefix,
    this.suffix,
    required this.title,
    this.height,
    this.onTap,
  }) : super(key: key);
  final Color bgColor;
  final Color borderColor;
  final Widget? prefix;
  final Widget? suffix;
  final Widget title;
  final double? height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      color: bgColor,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(
            horizontal: ww(context, 24),
            // vertical: hh(context, 24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              prefix ?? Container(),
              title,
              suffix ?? Container(),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: borderColor,
              width: ww(context, 2),
            ),
          ),
        ),
      ),
    );
  }
}

class LongShadowButton extends StatelessWidget {
  const LongShadowButton({
    Key? key,
    required this.bgColor,
    required this.borderColor,
    this.prefix,
    this.suffix,
    required this.title,
    this.height,
    this.onTap,
  }) : super(key: key);
  final Color bgColor;
  final Color borderColor;
  final Widget? prefix;
  final Widget? suffix;
  final Widget title;
  final double? height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: MaterialButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            prefix ?? Container(),
            title,
            suffix ?? Container(),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: borderColor,
          width: ww(context, 2),
        ),
        boxShadow: [
          shadow400(context),
        ],
      ),
    );
  }
}

class CircleShadowButton extends StatelessWidget {
  const CircleShadowButton({
    Key? key,
    required this.child,
    this.onTap,
    this.color,
  }) : super(key: key);
  final Function()? onTap;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 60),
      height: hh(context, 60),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          shadow400(context),
        ],
      ),
      child: MaterialButton(
        padding: EdgeInsets.all(0),
        onPressed: onTap,
        shape: CircleBorder(
          side: BorderSide(
            color: black,
            width: ww(context, 2),
          ),
        ),
        color: color ?? white,
        child: child,
      ),
    );
  }
}
