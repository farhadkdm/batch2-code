import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, this.controller, this.onChanged, this.validator, this.keyboardType, this.prefixIcon, this.prefixIconColor, required this.obscureText});

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Color? prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(),
                  controller: controller,
                  onChanged: onChanged,
                  validator: validator,
                  obscureText: obscureText,
                  keyboardType: keyboardType,
                  decoration: InputDecoration(
                    fillColor: Colors.teal,
                    filled: true,
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(),
                    // enabled: false,
                    prefixIcon: prefixIcon,
                    prefixIconColor: prefixIconColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 3
                      )
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3
                      )
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3
                      )
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3
                      )
                    ),
                  ),
                );
  }
}