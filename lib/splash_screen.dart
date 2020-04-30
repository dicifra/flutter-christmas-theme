import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'color.dart';
import 'main_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenBody(),
    );
  }
}

class SplashScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF196680),
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "A Very Christmasy App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SacramentoRegular',
                  fontSize: 50.0
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              child: FlareActor(
                'assets/flare/snowing_flare.flr',
                animation: 'snowing',
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: 150,
              height: 50,
              child: RaisedButton(
                color: buttonColor,
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Let's begin",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
