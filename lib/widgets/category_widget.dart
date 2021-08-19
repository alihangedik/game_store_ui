import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final category;

  const CategoryWidget({this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            category,
            style: TextStyle(fontFamily: "Montserrat SemiBold"),
          ),
        ),
      ),
    );
  }
}