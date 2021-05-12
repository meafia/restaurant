import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String fieldLabel;
  final IconData icon;
  final bool suffix;
  final bool obscureText;
  InputTextField(
      {this.fieldLabel,
      this.icon,
      this.suffix: false,
      this.obscureText: false});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: fieldLabel,
        labelStyle: TextStyle(color: Color(0xFF918ae2)),
        hintText: 'Enter Your $fieldLabel',
        helperText: 'Required',
        prefixIcon: Icon(
          icon,
          color: Color(0xFF918ae2),
        ),
        suffixIcon: suffix
            ? Icon(
                Icons.visibility,
                color: Color(0xFF918ae2),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(0xFF918ae2),
            width: 3,
          ),
        ),
        // floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
    );
  }
}
