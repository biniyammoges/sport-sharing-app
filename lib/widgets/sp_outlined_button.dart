
import 'package:flutter/material.dart';

class SpOutlinedButton extends StatelessWidget {
  final String text;
  final Icon textIcon;
  final Color color;
  final double? width;
  const SpOutlinedButton(
      {required this.textIcon,
      required this.text,
      this.color = Colors.white,
      Key? key,
      this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: color, width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(color: color, overflow: TextOverflow.ellipsis),
              ),
              const SizedBox(
                width: 5,
              ),
              textIcon,
            ],
          )),
    );
  }
}