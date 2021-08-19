import 'package:flutter/material.dart';
import 'package:game_store_ui/screens/details_page.dart';
import 'package:game_store_ui/screens/login_page.dart';
import 'package:game_store_ui/widgets/category_popular_widget.dart';
import 'package:game_store_ui/widgets/store_widget.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              spreadRadius: 20,
              blurRadius: 10,
            )
          ],
        ),
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
              ),
            ),
            BottomNavigationBarItem(
                title: Text(""),
                icon: Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 25,
                    ))),
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
      body: Column(
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
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Category(),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                child: Text(
                  "Oyunlar",
                  style: TextStyle(
                    fontFamily: "Montserrat SemiBold",
                    fontSize: 26,
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.filter_list_alt,
                        color: Colors.black.withOpacity(0.3)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Filtrele",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontFamily: "Montserrat Black"),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(Icons.sort_outlined,
                        color: Colors.black.withOpacity(0.3)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sırala",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontFamily: "Montserrat Black"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 310,
            child: CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(10),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      StoreItem(
                        image: Image.asset("assets/gta-5.jpg"),
                        gameName: "Grand Theft Auto V",
                        price: "159,74 ₺",
                        onPressed: () {},
                      ),
                      StoreItem(
                        image: Image.asset("assets/red-redemption-2.jpg"),
                        gameName: "Red Dead Rdmp. II",
                        price: "299,00 ₺",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage()),
                          );
                        },
                      ),
                      StoreItem(
                        image: Image.asset("assets/forza-horizon.png"),
                        gameName: "Forza Horizon 4",
                        price: "92,00 ₺",
                        onPressed: () {},
                      ),
                      StoreItem(
                        image: Image.asset("assets/the-witcher.png"),
                        gameName: "The Witcher III",
                        price: "59,99 ₺",
                        onPressed: () {},
                      ),
                      StoreItem(
                        image: Image.asset("assets/simple-games.png"),
                        gameName: "Sample Games",
                        price: "69,99 ₺",
                        onPressed: () {},
                      ),
                      StoreItem(
                        image: Image.asset("assets/simple-games.png"),
                        gameName: "Sample Games",
                        price: "79,99 ₺",
                        onPressed: () {},
                      ),
                      StoreItem(
                        image: Image.asset("assets/simple-games.png"),
                        gameName: "Sample Games",
                        price: "89,99 ₺",
                        onPressed: () {},
                      ),
                      StoreItem(
                        image: Image.asset("assets/simple-games.png"),
                        gameName: "Sample Games",
                        price: "99,99 ₺",
                        onPressed: () {},
                      ),
                      StoreItem(
                        image: Image.asset("assets/simple-games.png"),
                        gameName: "Sample Games",
                        price: "109,99 ₺",
                        onPressed: () {},
                      ),
                      StoreItem(
                        image: Image.asset("assets/simple-games.png"),
                        gameName: "Sample Games",
                        price: "119,99 ₺",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
