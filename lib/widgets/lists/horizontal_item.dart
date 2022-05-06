import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final double radius;
  final double height;
  final double width;
  final String text;
  final String img;
  const CustomListItem({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.radius,
    required this.img,
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
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(radius),topRight:  Radius.circular(radius)),
                  child: Image.network(img),
                ),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
