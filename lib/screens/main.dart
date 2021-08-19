import 'package:flutter/material.dart';
import 'package:game_store_ui/screens/homepage.dart';
import 'package:game_store_ui/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Text(
                  "Game Store",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat Black",
                      fontWeight: FontWeight.w400,
                      fontSize: 50),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "Bizim Tarzımız",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Montserrat SemiBold",
                        fontSize: 26,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text(
                    "OYUN",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat Black",
                      fontSize: 26,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Montserrat Black",
                        fontWeight: FontWeight.w400,
                        fontSize: 25),
                  ),
                ),
              ],
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  "Giriş Yapmadan Devam Et",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat Black",
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 120,),
            Container(
              alignment: Alignment.bottomCenter,
              height: 200,
              width: 200,
              child: Image.asset("assets/devnet-logo-beyaz.png"),
            )
          ],
        ),
      ),
    );
  }
}
