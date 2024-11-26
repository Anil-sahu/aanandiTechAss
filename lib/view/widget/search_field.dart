// ignore_for_file: must_be_immutable

import 'package:aananditeckass/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? labelText;
  Function()? onTap;
  Function()? preview;
  bool? enable = true;

  CustomTextField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.controller,
      this.onTap,
      this.preview,
      this.enable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: greyColor,
        contentPadding: const EdgeInsets.only(left: 14, right: 14),
        hintText: "Search 'Underbody'   ",
        prefixIcon: Icon(
          Icons.search,
          color: Color.fromARGB(221, 0, 0, 0),
          size: 25,
        ),
        hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: greyColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: greyColor),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: greyColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onTap: onTap,
      textAlign: TextAlign.center,
    );
  }
}
