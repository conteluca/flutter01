import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final double radius;
  final double height;
  final double width;
  final String text;

  const CustomListItem({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: () {},
          child: SizedBox(
            height: height,
            width: width,
            child: Center(
              child: Text(text),
            ),
          ),
        ),
      ),
    );
  }
}
