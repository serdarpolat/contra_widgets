import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/material.dart';

import 'Basics.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.hintText,
    this.prefix,
    required this.obsecure,
  }) : super(key: key);

  final String? hintText;
  final Widget? prefix;
  final bool obsecure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hh(context, 56),
      child: TextField(
        style: display21(context, black),
        obscureText: obsecure,
        obscuringCharacter: "•",
        decoration: InputDecoration(
          prefixIcon: prefix ?? null,
          hintText: hintText ?? "",
          hintStyle: display21(context, black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(hh(context, 16)),
            borderSide: BorderSide(
              color: black,
              width: ww(context, 2),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ww(context, 16)),
            borderSide: BorderSide(
              color: black,
              width: ww(context, 2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ww(context, 16)),
            borderSide: BorderSide(
              color: red,
              width: ww(context, 2),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: white,
      ),
    );
  }
}

class ShadowedField extends StatelessWidget {
  const ShadowedField({
    Key? key,
    this.hintText,
    this.prefix,
    this.suffix,
  }) : super(key: key);

  final String? hintText;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hh(context, 56),
      child: TextField(
        style: display21(context, black),
        decoration: InputDecoration(
          prefixIcon: prefix ?? null,
          suffixIcon: suffix ?? null,
          hintText: hintText ?? "",
          hintStyle: display21(context, black),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(
            left: 16,
            top: 12,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(ww(context, 16)),
        border: Border.all(
          color: black,
          width: ww(context, 2),
        ),
        boxShadow: [
          shadow400(context),
        ],
      ),
    );
  }
}
