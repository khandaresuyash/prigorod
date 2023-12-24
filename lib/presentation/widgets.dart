import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'theme.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;

  final String? prefixText;
  final String? suffixText;
  final double? height;
  final double? width;
  final TextEditingController controller;
  final TextInputType? inputType;
  final bool? enabled;

  final bool? autofocus;
  final Color? hintColor;

  final EdgeInsets? margin;

  const CustomTextField(
      {super.key,
      this.hintText,
      this.height,
      this.width,
      required this.controller,
      this.inputType,
      this.enabled,
      this.hintColor,
      this.margin,
      this.prefixText,
      this.autofocus,
      this.suffixText});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: height ?? 60,
        width: width ?? double.maxFinite,
        margin: margin,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(4)),
        child: TextField(
          autofocus: autofocus ?? false,
          enabled: enabled,
          keyboardType: inputType,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixText: prefixText,
            suffixText: suffixText,
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor),
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final double? width;
  final Function() onTap;
  final bool? loading;

  final Color? textColor;
  const CustomButton({
    super.key,
    required this.text,
    this.color,
    this.height,
    this.width,
    required this.onTap,
    this.loading = false,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return loading!
        ? Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(color ?? Colour.yellow),
              ),
            ),
          )
        : InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              height: height ?? 55,
              width: width ?? double.maxFinite,
              decoration: BoxDecoration(
                  color: color ?? Colour.yellow,
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
              ),
            ),
          );
  }
}

class CustomDropDownTextField extends StatelessWidget {
  final String hintText;
  final double? height;
  final double? width;
  final List<DropdownMenuItem> items;
  final dynamic value;
  final Function(dynamic) onChanged;
  const CustomDropDownTextField(
      {super.key,
      required this.hintText,
      this.height,
      this.width,
      required this.items,
      required this.onChanged,
      this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height ?? 60,
      width: width ?? double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(4)),
      child: DropdownButtonFormField(
          value: value,
          decoration: const InputDecoration(border: InputBorder.none),
          hint: Text(hintText),
          items: items,
          onChanged: onChanged),
    );
  }
}

String formatDateTime(DateTime dateTime) {
  final dateFormat = DateFormat('dd-MM-yy HH:mm');
  return dateFormat.format(dateTime);
}
