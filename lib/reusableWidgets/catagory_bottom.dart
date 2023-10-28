import 'package:flutter/material.dart';
class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, this.text});
   final String? text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {  },
      child: Text(
        text!,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
