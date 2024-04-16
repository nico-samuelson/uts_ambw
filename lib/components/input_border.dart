import 'package:flutter/material.dart';

OutlineInputBorder inputBorder(focused) {
  return OutlineInputBorder(
    borderSide: BorderSide(
        color: focused ? Colors.amber.shade600 : Colors.grey.shade300,
        width: 1.0),
    borderRadius: BorderRadius.circular(12.0),
  );
}