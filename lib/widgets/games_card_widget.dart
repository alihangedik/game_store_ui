import 'package:flutter/material.dart';

class GamesCardWidget extends StatelessWidget {
  final image;
  final category;
  final price;
  final gameName;
  final onPressed;

  const GamesCardWidget(
      {Key? key,
      this.image,
      this.category,
      this.price,
      this.gameName,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: onPressed,
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Container(
            width: 150,
            height: 200,
            child: image,
          ),
        ),
        Container(
          height: 100,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  gameName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "Montserrat SemiBold"),
                ),
              ),
              Center(
                child: Text(
                  category,
                  style: TextStyle(
                      fontFamily: "Montserrat SemiBold", fontSize: 10),
                ),
              ),
              Center(
                child: Text(
                  price,
                  style: TextStyle(
                      fontFamily: "Montserrat SemiBold", fontSize: 26),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
