import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_interview_test/app_images.dart';

class FriendsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        FriendCard(
          name: 'Sharon',
        ),
        FriendCard(
          name: 'Dave',
        ),
        FriendCard(
          name: 'Grace',
        ),
        FriendCard(name: 'Linus'),
        FriendCard(name: 'Muli'),
      ],
    );
  }
}

class FriendCard extends StatelessWidget {
  final String name;

  const FriendCard({Key key, @required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  AppImages.getRandomImage(),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}
