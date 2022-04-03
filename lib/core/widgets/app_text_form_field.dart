import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {Key? key,
      required this.controller,
      required this.validate,
      required this.inputType,
      required this.label,
      this.icon,
      this.suffixIcon,
      this.obscureText,
      this.onSuffixIconPressed,
      this.onChange})
      : super(key: key);

  final TextEditingController controller;
  final TextInputType inputType;
  final String label;
  final IconData? icon;
  final IconData? suffixIcon;
  final String? Function(String?)? validate;
  final Function()? onSuffixIconPressed;
  final Function(String value)? onChange;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      controller: controller,
      validator: validate,
      keyboardType: inputType,
      obscureText: obscureText ?? false,
      style: Theme.of(context).textTheme.bodyText1,
      onChanged: onChange,
      decoration: InputDecoration(
        label: Text(label),
        prefixIcon: Icon(
          icon,
        ),
        suffixIcon: IconButton(
            onPressed: onSuffixIconPressed,
            icon: Icon(
              suffixIcon,
            )),
      ),
    );
  }
}
