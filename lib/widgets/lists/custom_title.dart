import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      // color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 12, bottom: 12),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16.5, letterSpacing: 0.8),
        ),
      ),
    );
  }
}
