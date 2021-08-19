import 'package:flutter/material.dart';
import 'package:game_store_ui/screens/login_page.dart';
import 'package:game_store_ui/widgets/category_popular_widget.dart';
import 'package:game_store_ui/widgets/connected-account.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            spreadRadius: 20,
            blurRadius: 10,
          )
        ]),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                title: Text(""),
                icon: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Image.asset(
                    "assets/homepage.png",
                    width: 22,
                  ),
                )),
            BottomNavigationBarItem(
                title: Text(""),
                icon: Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Image.asset(
                    "assets/add.png",
                    width: 22,
                  ),
                )),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Image.asset(
                  "assets/shopping-cart.png",
                  width: 22,
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.black),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Game Store",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat Black",
                          fontWeight: FontWeight.w400,
                          fontSize: 42),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              icon: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              )),
                          SizedBox(
                            width: 18,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: Text(
                                "Giriş Yap",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Montserrat Black",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                      ),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 11, right: 15),
                            hintText: "Oyun Ara",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontFamily: "Montserrat SemiBold")),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CategoryAndPopular(),
            SizedBox(
              height: 20,
            ),
            ConnectedAccount()
          ],
        ),
      ),
    );
  }
}
