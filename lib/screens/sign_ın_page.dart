import 'package:flutter/material.dart';
import 'package:game_store_ui/screens/homepage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _LoginPAgeState createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 415,
            height: 365,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Game Store",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat Black",
                      fontSize: 42,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Text(
                    "KAYDOL",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat Black",
                      fontSize: 47,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Hesabın Var Mı?",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat Black",
                      fontSize: 13,
                    ),
                  ),
                ),
                Center(
                    child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ));
                  },
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat Black",
                      fontSize: 20,
                    ),
                  ),
                )),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: 350,
                child: Text(
                  "Kullanıcı Adı",
                  style:
                      TextStyle(fontSize: 20, fontFamily: "Montserrat Black"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15, bottom: 7),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 350,
            child: Text(
              "Şifre",
              style: TextStyle(fontSize: 20, fontFamily: "Montserrat Black"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15, bottom: 7),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
                  height: 20,
                ),
          Container(
            alignment: Alignment.centerLeft,
            width: 350,
            child: Text(
              "Şifre",
              style: TextStyle(fontSize: 20, fontFamily: "Montserrat Black"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15, bottom: 7),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 145,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text(
                  "Kaydol",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat Black",
                      fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Şifremi Unuttum",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Montserrat Black",
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            width: 170,
            height: 100,
            child: Image.asset("assets/devnet-logo-siyah.png"),
          ),
        ],
      ),
    );
  }
}
