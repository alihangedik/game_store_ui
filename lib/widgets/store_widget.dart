import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  final image;
  final price;
  final gameName;
  final onPressed;

  const StoreItem(
      {Key? key, this.image, this.price, this.gameName, this.onPressed})
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
            width: 100,
            height: 130,
            child: image,
          ),
        ),
        Container(
          height: 50,
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
                  price,
                  style: TextStyle(
                      fontFamily: "Montserrat SemiBold", fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
