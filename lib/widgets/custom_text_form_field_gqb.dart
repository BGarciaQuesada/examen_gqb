import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final IconData? suffixIcon;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomTextFormField({
    super.key, this.hintText, this.labelText, this.suffixIcon, required this.obscureText, required this.formProperty, required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value!.trim().length < 6) {
          // Para comprobación de 6+ caracteres
          return 'Mínimo 6 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUnfocus,
      decoration: InputDecoration(
        // Cuando vacío
        hintText: hintText,
        // Cuando escrito
        labelText: labelText,
      ),
    );
  }
}
