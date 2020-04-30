import 'package:flutter/material.dart';
import 'color.dart';

class CardInspirationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/snow_effect.png',
                      ),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 65.0,
                        child: FlatButton(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () => Navigator.of(context).pop(false),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          "assets/mr_santa.png",
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 650.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(50.0),
                      topRight: const Radius.circular(50.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: ReusableCard("assets/card1.png"),
                            ),
                            Expanded(
                              child: ReusableCard("assets/card5.jpg"),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ReusableCard("assets/card3.jpg"),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: ReusableCard("assets/card4.png"),
                            ),
                            Expanded(
                              child: ReusableCard("assets/card2.jpg"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  String image;

  ReusableCard(this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
          color: dark_green,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
