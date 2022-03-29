import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {Key? key,
        required this.controller,
        required this.validate,
        required this.inputType,
        required this.hint,
        this.icon,
        this.suffixIcon,
        this.obscureText,
        this.onSuffixIconPressed,
        this.onChange})
      : super(key: key);

  final TextEditingController controller;
  final TextInputType inputType;
  final String hint;
  final IconData? icon;
  final IconData? suffixIcon;
  final String? Function(String?)? validate;
  final Function()? onSuffixIconPressed;
  final Function(String value)? onChange;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      alignment: Alignment.center,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: TextFormField(
        maxLines: 1,
        controller: controller,
        validator: validate,
        keyboardType: inputType,
        obscureText: obscureText ?? false,
        cursorColor: Colors.grey,
        style: Theme.of(context).textTheme.subtitle2,
        onChanged: onChange,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: Colors.grey),
          errorBorder: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
              onPressed: onSuffixIconPressed,
              icon: Icon(
                suffixIcon,
                color: Colors.grey,
              )),
        ),
      ),
    );
  }
}
