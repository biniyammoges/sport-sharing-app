import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BallCircle extends StatelessWidget {
  final String assetName;
  const BallCircle({
    required this.assetName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor, width: 1),
          borderRadius: BorderRadius.circular(23)),
      child: SvgPicture.asset(assetName),
    );
  }
}