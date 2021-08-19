import 'package:flutter/material.dart';
import 'package:game_store_ui/widgets/connected_widget.dart';

class ConnectedAccount extends StatefulWidget {
  const ConnectedAccount({Key? key}) : super(key: key);

  @override
  _ConnectedAccountState createState() => _ConnectedAccountState();
}

class _ConnectedAccountState extends State<ConnectedAccount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          child: Text(
            "Bağlı Hesaplar",
            style: TextStyle(
              fontFamily: "Montserrat SemiBold",
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ConnectedWidget(
          image: Image.asset("assets/epic-games-logo.png"),
          connectedUser: "Epic Games",
          width: 75.0,
          user: "Alihan Gedik",
        ),
        SizedBox(
          height: 10,
        ),
        ConnectedWidget(
          image: Image.asset(
            "assets/steam-logo.png",
          ),
          connectedUser: "Steam",
          width: 122.0,
          user: "alihangedik",
        ),
        SizedBox(
          height: 10,
        ),
        ConnectedWidget(
          image: Image.asset(
            "assets/ubisoft-connect.png",
          ),
          connectedUser: "Ubisoft Connect",
          width: 35.0,
          user: "Alihan Gedik",
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 361,
          height: 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
        ),
      ],
    );
  }
}
