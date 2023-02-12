import 'package:flutter/material.dart';
import 'package:sport_sharing_app/utils/constants.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
                radius: 33,
                child:
                    ClipOval(child: Image.asset('assets/images/avatar.jpg'))),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'John Doe, 28',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Jaddah, KSA',
                    style: TextStyle(color: Constants.spGrayColor))
              ],
            )
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.near_me_rounded,
              color: Colors.white,
            ))
      ],
    );
  }
}
