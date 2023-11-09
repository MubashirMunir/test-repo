import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 50.0, right: 50, top: 150, bottom: 150),
        child: FlipCard(
            autoFlipDuration: Duration(seconds: 2),
            direction: FlipDirection.HORIZONTAL,
            flipOnTouch: true,
            speed: 900,
            side: CardSide.FRONT,
            back: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
            ),
            front: Stack(children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/event.jpg"))),
              ),
              Text(
                "Mubashir Munir",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ])),
      ),
    );
  }
}
