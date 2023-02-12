
import 'package:flutter/material.dart';
import 'package:sport_sharing_app/utils/constants.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.secondary),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: const ClipOval(
                child: Icon(
              Icons.earbuds_sharp,
              color: Constants.spBlackColor,
            )),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          color: Constants.spBlackColor,
                          fontSize: 17,
                          height: 1.4),
                      children: [
                    TextSpan(text: 'In order to view '),
                    TextSpan(
                        text: "John's profile. ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: '\nyou must follow him!')
                  ])),
              const SizedBox(
                height: 7,
              ),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                          height: 1.4),
                      children: [
                    TextSpan(
                      text: 'John participated in ',
                    ),
                    TextSpan(
                        text: "5 ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Constants.spBlackColor)),
                    TextSpan(text: 'events in total')
                  ])),
            ],
          )
        ],
      ),
    );
  }
}
