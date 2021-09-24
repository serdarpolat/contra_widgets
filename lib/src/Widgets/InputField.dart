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
