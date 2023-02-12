import 'package:flutter/material.dart';
import 'package:sport_sharing_app/utils/constants.dart';
import 'package:sport_sharing_app/widgets/home_page/ball_circle.dart';
import 'package:sport_sharing_app/widgets/home_page/follow_btn.dart';
import 'package:sport_sharing_app/widgets/home_page/follow_info.dart';
import 'package:sport_sharing_app/widgets/home_page/header_user_info.dart';
import 'package:sport_sharing_app/widgets/sp_outlined_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.spBlackColor,
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.spPadding,
                vertical: Constants.spPadding - 5),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Constants.spBlackColor,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50))),
            child: Column(
              children: [
                const UserInfo(),
                const SizedBox(
                  height: 20,
                ),

                // Follower Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const FollowInfo(amount: 2215, text: 'Following'),
                    const FollowInfo(amount: 1522, text: 'Follower'),
                    Column(
                      children: const [
                        SpOutlinedButton(
                          text: 'Messages',
                          textIcon: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SpOutlinedButton(
                          text: 'Invites',
                          textIcon: Icon(Icons.add_circle, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                // About
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'About',
                          style: TextStyle(
                              color: Constants.spGrayColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 19),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Travel, Advantures & \n Lifestyle Photographer & Digital Influencer\n Nike Ambassador \nLets Work:',
                          style: TextStyle(color: Constants.spGrayColor),
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        // email
                        Row(
                          children: const [
                            Icon(
                              Icons.email,
                              color: Constants.spGrayColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'biniyammoges54@gmail.com',
                              style: TextStyle(color: Constants.spGrayColor),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        BallCircle(assetName: 'assets/images/soccer_ball.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        BallCircle(assetName: 'assets/images/tenis_ball.svg')
                      ],
                    )
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                // Follow Button
                const FollowBtn(text: 'Follow'),

                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),

          // Size between black container
          const SizedBox(
            height: 25,
          ),

          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.spPadding),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.secondary),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: const ClipOval(
                            child: Icon(
                          Icons.earbuds_sharp,
                          color: Constants.spBlackColor,
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
