import 'package:flutter/material.dart';
import 'package:sport_sharing_app/models/player_model.dart';
import 'package:sport_sharing_app/utils/constants.dart';

class PlayerRecommendation extends StatelessWidget {
  const PlayerRecommendation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Player> players = [
      Player(name: 'Moke', img: 'assets/images/img6.jpg'),
      Player(name: 'Mersy', img: 'assets/images/img7.jpg'),
      Player(name: 'Ja', img: 'assets/images/img6.jpg'),
      Player(name: 'Bini', img: 'assets/images/img7.jpg'),
      Player(name: 'Melke', img: 'assets/images/img6.jpg'),
      Player(name: 'Aysi', img: 'assets/images/img7.jpg')
    ];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          'Players you may know!',
          style: TextStyle(
              fontSize: 18,
              color: Constants.spBlackColor,
              fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          child: const Text(
            'See all',
            style: TextStyle(color: Colors.green, fontSize: 17),
          ),
        )
      ]),
      const SizedBox(
        height: 15,
      ),
      SizedBox(
        height: 120,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(children: [
              CircleAvatar(
                  radius: 33,
                  child: ClipOval(child: FittedBox(fit: BoxFit.cover, child: Image.asset(players[index].img)))),
              const SizedBox(
                height: 15,
              ),
              Text(
                players[index].name,
                style:
                    const TextStyle(fontSize: 15, color: Constants.blackColor),
              )
            ]);
          },
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: players.length,
        ),
      ),
    ]);
  }
}
