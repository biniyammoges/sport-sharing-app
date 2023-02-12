
import 'package:flutter/material.dart';
import 'package:sport_sharing_app/utils/constants.dart';

class FollowInfo extends StatelessWidget {
  final int amount;
  final String text;
  const FollowInfo({Key? key, required this.amount, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: '$amount ',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      TextSpan(text: text, style: const TextStyle(color: Constants.spGrayColor))
    ]));
  }
}