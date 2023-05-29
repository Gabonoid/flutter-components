import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Valor obligatorio';
        return value.length < 3 ? 'Minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        icon: icon == null ? null : Icon(icon),
        //  focusedBorder: OutlineInputBorder(
        //    borderSide: Colors.green()
        //  ),
        //  border: OutlineInputBorder(
        //      borderRadius: BorderRadius.only(
        //          bottomLeft: Radius.circular(10)))
      ),
    );
  }
}
