import 'package:flutter/material.dart';
import 'package:game_store_ui/screens/details_page.dart';
import 'package:game_store_ui/screens/store_page.dart';
import 'package:game_store_ui/widgets/category_widget.dart';
import 'package:game_store_ui/widgets/games_card_widget.dart';

class CategoryAndPopular extends StatefulWidget {

  @override
  _CategoryAndPopularState createState() => _CategoryAndPopularState();
}

class _CategoryAndPopularState extends State<CategoryAndPopular> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Category(),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 360,
              child: Text(
                "En Çok Satın Alınanlar",
                style: TextStyle(
                  fontFamily: "Montserrat SemiBold",
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: 155,
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(50, 30),
                    alignment: Alignment.centerLeft),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StorePage(),
                    ),
                  );
                },
                child: Text(
                  "Daha Fazla Göster",
                  style: TextStyle(
                      fontFamily: "Montserrat SemiBold",
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.4)),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GamesCardWidget(
                  image: Image.asset("assets/gta-5.jpg"),
                  gameName: "Grand Theft Auto V",
                  category: "Aksiyon - Rol Yapma",
                  price: "156,74 ₺",
                ),
                GamesCardWidget(
                  image: Image.asset("assets/red-redemption-2.jpg"),
                  gameName: "Red Dead Redemption II",
                  category: "Aksiyon - Rol Yapma",
                  price: "299,00 ₺",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsPage()),
                    );
                  },
                ),
                GamesCardWidget(
                  image: Image.asset("assets/forza-horizon.png"),
                  gameName: "Forza Horizon 4",
                  category: "Yarış - Aksiyon",
                  price: "92,00 ₺",
                ),
                GamesCardWidget(
                  image: Image.asset("assets/the-witcher.png"),
                  gameName: "The Witcher III",
                  category: "Aksiyon - Rol Yapma",
                  price: "59,99 ₺",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          child: Text(
            "Kategoriler",
            style: TextStyle(
              fontFamily: "Montserrat SemiBold",
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 35,
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryWidget(
                  category: "Aksiyon",
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryWidget(
                  category: "Yarış",
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryWidget(
                  category: "Platform",
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryWidget(
                  category: "Rol Yapma",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
