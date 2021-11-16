import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<Map<String, String>> foodOptions = [
    {
      'name': 'Sushi',
      'image': 'images/Icon-001.png',
    },
    {
      'name': 'Ramen',
      'image': 'images/Icon-002.png',
    },
    {
      'name': 'Curry',
      'image': 'images/Icon-003.png',
    },
    {
      'name': 'Onigiri',
      'image': 'images/Icon-004.png',
    },
    {
      'name': 'Taco',
      'image': 'images/Icon-001.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      margin: const EdgeInsets.only(
        top: 20.0,
        bottom: 25.0,
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          itemCount: this.foodOptions.length,
          itemBuilder: (context, index) {
            Map<String, String> option = this.foodOptions[index];
            return Container(
              margin: const EdgeInsets.only(right: 35.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          option['image'],
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.grey[300],
                          offset: Offset(6.0, 6.0),
                        )
                      ],
                    ),
                  ),
                  Text(
                    option['name'],
                    style: TextStyle(fontSize: 17.0),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
