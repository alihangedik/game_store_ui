import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/red-redemption-2-details.png",
            ),
          ),
          Divider(
            height: 5,
            color: Colors.white,
          ),
          Container(
            width: 415,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "RED DEAD REDEPTİON II",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat Black",
                          fontSize: 28),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Aksiyon - Rol Yapma",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat SemiBold",
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "Red Dead Redemption 2 yeni çağın şafağında Vahşi Batıda Arthur Morgan ve Van der Linde çetesinin hikayesini anlatan görkemli bir onur ve sadakat destanı.",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat SemiBold",
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Geliştirici : Rocstar Games",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat SemiBold",
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "assets/pegi18.png",
                    width: 40,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Satın Al",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: "Montserrat Black",
                          color: Colors.black),
                    ),
                  ),
                  Divider(height: 20,color: Colors.black,),
                  Text(
                    "299,00 ₺",
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: "Montserrat Black",
                        color: Colors.black),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
