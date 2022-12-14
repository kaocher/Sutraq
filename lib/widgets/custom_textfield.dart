import 'package:flutter/material.dart';
import '../const/app_colors.dart';

Widget customTextField({
  IconData? prefixIcon,
  IconData? suffixIcon,
  bool obsecureText = false,
}) {
  return TextFormField(
    decoration: InputDecoration(
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      prefixIcon: Icon(
        prefixIcon,
        color: AppColors.greenColor,
      ),
      suffixIcon: Icon(
        suffixIcon,
        color: AppColors.greyColor,
      ),
    ),
    obscureText: obsecureText,
  );
}
