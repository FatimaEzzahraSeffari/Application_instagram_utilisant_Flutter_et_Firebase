import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key, required username}) : super(key: key);
  final List storyItems = [
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/B.jpg",
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/b2.jpg",
    },
    {
      "pseudo": 'amourOnemore',
      "photo": "assets/images/photo/b22.jpg",
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/B.jpg",
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/b2.jpg",
    },
    {
      "pseudo": 'amourOnemore',
      "photo": "assets/images/photo/b22.jpg",
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/B.jpg",
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/b2.jpg",
    },
    {
      "pseudo": 'amourOnemore',
      "photo": "assets/images/photo/b22.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/story-circle.png',
                      height: 70,
                    ),
                    Image.asset(
                      'assets/images/story-circle.png',
                      height: 68,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage(story['photo']),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}