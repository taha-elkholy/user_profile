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
        filled: true,
        fillColor: Colors.pink.withOpacity(.2),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(width: 2)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.grey, width: 2)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red, width: 2)),
        label: Text(label),
        hintStyle:
            Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey),
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
