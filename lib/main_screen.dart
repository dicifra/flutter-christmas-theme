import 'package:christmas_theme_app/songs_screen.dart';
import 'package:flutter/material.dart';
import 'card_inspiration_screen.dart';
import 'color.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.of(context).pop(false),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        "Ho, ho, ho!",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 700.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF192212),
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return CardInspirationScreen();
                              },
                            ),
                          );
                        },
                        child: DetailMenu1(
                          backgroundColor: Color(0xFFFBE3D3),
                          image: AssetImage("assets/christmas_card.png"),
                          text: "Christmas cards inspiration",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SongsScreen(
                                );
                              },
                            ),
                          );
                        },
                        child: DetailMenu2(
                          backgroundColor: Color(0xFFF0D78C),
                          image: AssetImage("assets/christmas_song_pic.jpg"),
                          text: "Holiday essential  songs",
                        ),
                      ),
                      DetailMenu3(
                        image: AssetImage("assets/new_year_countdown.png"),
                        text: "New Year countdown",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 120.0,
            right: 10.0,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/santa_claus.png"),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailMenu1 extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final AssetImage image;

  DetailMenu1({this.backgroundColor, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
      child: Container(
        height: 180.0,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(34.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 220.0,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34.0),
                  image: DecorationImage(image: image, fit: BoxFit.fill),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailMenu2 extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final AssetImage image;

  DetailMenu2({this.backgroundColor, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
      child: Container(
        height: 180.0,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(34.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 220.0,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34.0),
                  image: DecorationImage(image: image, fit: BoxFit.fill),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailMenu3 extends StatelessWidget {
  final AssetImage image;
  final String text;

  DetailMenu3({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
      child: Container(
        height: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34.0),
          image: DecorationImage(image: image, fit: BoxFit.cover),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
