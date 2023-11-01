import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final void Function()? onTap;

  // ignore: prefer_typing_uninitialized_variables
  final label;
  const Mybutton({super.key, required this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            "$label",
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
