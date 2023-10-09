import 'package:dating_card/card.dart';
import 'package:dating_card/constant.dart';
import 'package:dating_card/flutter_stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class MyStory extends StatelessWidget {
  final _momentCount = 5;
  final _momentDuration = const Duration(seconds: 5);

  @override
  Widget build(BuildContext context) {
    List cards = [
      MyCard(
        img: "assets/1.jpg",
      ),
      MyCard(
        img: "assets/3.jpeg",
      ),
      MyCard2(
        img: "assets/2.jpg",
      ),
    ];

    return Container(
      width: cardwidth(context), // Adjust width as needed
      height: cardHeight(context),
      child: Story(
        fullscreen: false,
        progressSegmentGap: 2.0,
        // onFlashForward: Navigator.of(context).pop,
        // onFlashBack: Navigator.of(context).pop,
        momentCount: 3,
        momentDurationGetter: (idx) => _momentDuration,
        momentBuilder: (context, idx) => cards[idx],
      ),
    );
  }
}
