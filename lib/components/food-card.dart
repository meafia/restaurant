import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String name;
  FoodCard({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 5),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -40,
            left: 10,
            child: Image.asset(
              'images/$name.png',
              width: 200,
              height: 200,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('${name[0].toUpperCase()}${name.substring(1)}'),
                MyDropdownButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyDropdownButton extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyDropdownButton> {
  List<int> countList = [1, 2, 3];
  int selectedNum = 1;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: countList
          .map((e) => DropdownMenuItem(
                child: Text(e.toString()),
                value: e,
              ))
          .toList(),
      value: selectedNum,
      onChanged: (value) {
        setState(() {
          selectedNum = value;
        });
      },
    );
  }
}
