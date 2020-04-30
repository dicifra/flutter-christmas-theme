import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'color.dart';

class SongsScreen extends StatefulWidget {
  @override
  _SongsScreenState createState() => _SongsScreenState();
}

class _SongsScreenState extends State<SongsScreen> {
  int _value = 1;
  bool _playing  = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xFFFBE3D3),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: blue_theme),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Christmas Essentials",
              style: TextStyle(color: blue_theme, fontFamily: "Nexa")),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: FlatButton(
                onPressed: () {},
                child: Image.asset(
                  "icon/custom_menu_icon.png",
                  width: 30,
                  height: 30,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              Center(
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  child: Container(
                      decoration: BoxDecoration(
                          color: blue_theme.withOpacity(.5),
                          shape: BoxShape.circle),
                      child: SingleCircularSlider(
                        100,
                        _value,
                        onSelectionChange: (int a, int value, int c) {
                          setState(() {
                            _value = value;
                          });
                        },
                        selectionColor: dark_green,
                        handlerColor: buttonColor,
                        child: Center(
                          child: Container(
                            width: 200.0,
                            height: 200.0,
                            child: ClipOval(
                              clipper: MClipper(),
                              child: (Image.network(
                                'https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2019/01/931/524/Mariah-Carey-AP.jpg?ve=1&tl=1',
                                fit: BoxFit.cover,
                              )),
                            ),
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Mariah Carey",
                    style: TextStyle(
                        color: blue_theme, fontSize: 20.0, fontFamily: "Nexa"),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "All I want for Christmas is you",
                    style: TextStyle(color: blue_theme, fontSize: 18.0),
                  )
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: 350.0,
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 65.0,
                        width: 290.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: blue_theme, width: 3.0),
                            borderRadius: BorderRadius.circular(40.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.fast_rewind,
                                  size: 55.0, color: blue_theme),
                              Expanded(
                                child: Container(),
                              ),
                              Icon(Icons.fast_forward,
                                  size: 55.0, color: blue_theme)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 92.0,
                        height: 92.0,
                        decoration: BoxDecoration(
                            color: blue_theme, shape: BoxShape.circle),
                        child: IconButton(
                          icon: Icon(
                            _playing == true ? Icons.play_arrow : Icons.pause,
                            size: 45.0,
                            color: Colors.white,

                          ),
                          onPressed: () {
                            setState(() {
                              _playing == true ? _playing = false : _playing = true;
                              print(_playing);
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 190.0,
                width: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: -25,
                      child: Container(
                        width: 50.0,
                        height: 190.0,
                        decoration: BoxDecoration(
                            color: blue_theme,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0))),
                      ),
                    ),
                    Positioned(
                      right: -25,
                      child: Container(
                        width: 50.0,
                        height: 190.0,
                        decoration: BoxDecoration(
                            color: blue_theme,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0))),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          song(
                              "https://api.time.com/wp-content/uploads/2019/10/all-i-want-for-christmas-is-you-mariah-carey.jpg?w=600&quality=85",
                              "O Holy Night",
                              "Merry Christmas 1994"),
                          song(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfj0DrmCt5p2zGnRyFI9fDdRveYXY0PqhSyUHQ1Tq34489W_85&s",
                              "Santa Claus is coming to town",
                              "Merry Christmas 1994"),
                          song(
                              "https://thatgrapejuice.net/wp-content/uploads/2019/09/mariah-carey-thatgrapejuice-tour-2019-all-i-want-christmas-600x594.png",
                              "Christmas",
                              "Merry Christmas 1994"),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget song(String image, String title, String subtitle) {
  return Padding(
    padding: EdgeInsets.only(bottom : 18.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                image,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          width: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(color: blue_theme),
                maxLines: 2,
              ),
              Text(
                subtitle,
                style: TextStyle(color: blue_theme),
                maxLines: 3,
              )
            ],
          ),
        )
      ],
    ),
  );
}

class MClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: min(size.width, size.height) / 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
