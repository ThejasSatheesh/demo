import 'package:flutter/material.dart';
import 'styles.dart';


class SpotixLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      width: 325,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Image.asset("assets/spotixLogo.png")),
    );
  }
}

class PhotoAndLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      bottom: -175,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 5, offset: Offset(5, 5), color: Colors.blueGrey),
            ], borderRadius: BorderRadius.all(Radius.circular(25))),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              child: Image.asset(
                "assets/myphoto.jpeg",
              ),
            ),
          ),
          SizedBox(height: 80),
          Text("Thejas Satheesh",
              style: textStyles.nameStyle),
          SizedBox(height: 15),
          Text(
            """
Thayyil house,
Kanimangalam P.O.
Thrissur-027
                        """,
            style: textStyles.locationStyle
          ),
        ],
      ),
    );
  }
}
