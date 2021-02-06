import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FriendsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        FriendCard(),
        FriendCard(),
        FriendCard(),
        FriendCard(),
        FriendCard(),
      ],
    );
  }
}

class FriendCard extends StatelessWidget {
  final String image;
  final String name;

  const FriendCard({Key key, this.image, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/woman_balck.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Text("Sharon")
          ],
        ),
      ),
    );
  }
}
