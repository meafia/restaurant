import 'package:flutter/material.dart';
import 'package:resturant/components/food-card.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5d55b4),
        title: Text(
          'Restaurant menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          FoodCard(name: 'burger'),
          FoodCard(name: 'hotdog'),
          FoodCard(name: 'pizza'),
          FoodCard(name: 'donut'),
        ],
      ),
    );
  }
}
