


import 'package:flutter/material.dart';

import '../Constant/color.dart';

class TextFormFieldsCustom extends StatefulWidget {

  final String? hintText , helperText , initialValue;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved , onChanged;
  bool? isPassword;
  final TextInputType? keyboardType;
  final Function()? onEditingComplete , suffixOnPressed;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool? suffix , suffixToggle;
  final IconData? suffixIcon , suffixIconToggle;
  final Color? suffixIconColor , suffixIconColorToggle;
  final FocusNode? focus;
  final IconData? prefixIcon;

  @override
  State<TextFormFieldsCustom> createState() => _TextFormFieldsCustomState();

  TextFormFieldsCustom(  {
    Key? key,
    this.hintText,
    this.validator,
    this.onSaved,
    this.keyboardType,
    this.helperText,
    this.isPassword = false,
    this.initialValue = "",
    this.onEditingComplete,
    this.textInputAction,
    this.controller,
    this.suffix = false,
    this.suffixToggle = false,
    this.suffixIcon,
    this.suffixIconColor = hintColor,
    this.suffixIconToggle,
    this.suffixIconColorToggle = hintColor,
    this.suffixOnPressed,
    this.focus,
    this.onChanged,
    this. prefixIcon,
  }) : super(key: key);
}

class _TextFormFieldsCustomState extends State<TextFormFieldsCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focus,
      textInputAction: widget.textInputAction ?? TextInputAction.done,
      onEditingComplete: widget.onEditingComplete,
      onChanged: (value) {
        widget.onChanged != null ? widget.onChanged!(value) : null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        isDense: true,
        hintText: widget.hintText,
        helperText: widget.helperText,
        suffixIcon: widget.suffix!
            ? widget.suffixToggle!
            ? IconButton(
          focusNode: null,
          icon: Icon(widget.isPassword!
              ? widget.suffixIcon
              : widget.suffixIconToggle),
          color: widget.isPassword!
              ? widget.suffixIconColor
              : widget.suffixIconColorToggle,
          onPressed: () {
            setState(() {
              widget.isPassword = !widget.isPassword!;
            });
          },
        )
            : Icon(
          widget.suffixIcon,
          color: widget.suffixIconColor,
        )
            : null,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: hintColor,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: lightgreen,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: lightgreen,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: lightgreen,
          ),
        ),
      ),
      obscureText: widget.isPassword!,
      validator: widget.validator,
      onSaved: (value) {
        widget.onSaved != null ? widget.onSaved!(value) : null;
      },
      keyboardType: widget.keyboardType,
    );
  }
}