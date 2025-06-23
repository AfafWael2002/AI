// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class UneditableTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validate;
  final TextInputType? type;
  final String? hintText;
  final IconData? prefix;
  final bool isPassword;
  const UneditableTextFormField({
    super.key,
    required this.controller,
    required this.validate,
    this.type,
    this.hintText,
    this.prefix,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: TextFormField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefix != null ? Icon(prefix) : null,
        ),
        keyboardType: type,
        obscureText: isPassword,
        validator: validate,
      ),
    );
  }
}

class DefaultTextFormField extends StatelessWidget {
  TextEditingController controller;
  FormFieldValidator<String> validate;
  TextInputType? type;
  String? hintText;
  IconData? prefix;
  bool isPassword = false;
  DefaultTextFormField({
    super.key,
    required this.controller,
    required this.validate,
    this.type,
    this.hintText,
    this.prefix,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      validator: validate,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(prefix),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.grey.shade500),
        ),
      ),
    );
  }
}
