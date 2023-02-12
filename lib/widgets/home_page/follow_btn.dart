
import 'package:flutter/material.dart';
import 'package:sport_sharing_app/utils/constants.dart';

class FollowBtn extends StatelessWidget {
  final String text;
  const FollowBtn({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Constants.blackColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
