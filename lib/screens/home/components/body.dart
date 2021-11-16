import 'package:flutter/material.dart';

import 'categories.dart';
import 'food_cart.dart';

class Body extends StatelessWidget {
  final List<Map<String, String>> popularFood = [
    {
      'name': 'Sushi party set',
      'price': '10.71',
      'rate': '4.9',
      'clients': '200',
      'image': 'images/plate-001.png'
    },
    {
      'name': 'Chicken Karaage',
      'price': '2.57',
      'rate': '4.5',
      'clients': '168',
      'image': 'images/plate-002.png'
    },
    {
      'name': 'Rice and meat',
      'price': '130.00',
      'rate': '4.8',
      'clients': '150',
      'image': 'images/plate-003.png'
    },
    {
      'name': 'Vegan food',
      'price': '400.00',
      'rate': '4.2',
      'clients': '150',
      'image': 'images/plate-007.png'
    },
    {
      'name': 'Rich food',
      'price': '1000.00',
      'rate': '4.6',
      'clients': '10',
      'image': 'images/plate-006.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Special",
                style: TextStyle(color: Colors.black45, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Japanese Food",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xffff4848),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
                left: 20.0,
                right: 20.0,
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                autocorrect: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.grey[300], width: 1.0),
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.black45, width: 1.0),
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 28.0,
                    color: Colors.black45,
                  ),
                  suffixIcon: Icon(
                    Icons.filter_list,
                    size: 28.0,
                    color: Colors.black45,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 19.0,
                  ),
                ),
              ),
            ),
            Categories(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: Text(
                    'Recommended',
                    style: TextStyle(fontSize: 21.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 10),
                  child: Text(
                    'See all >',
                    style: TextStyle(fontSize: 21.0, color: Color(0xffff4848)),
                  ),
                ),
              ],
            ),
            Container(
              height: 220.0,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: this.popularFood.length,
                itemBuilder: (context, index) {
                  Map<String, String> product = this.popularFood[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        'details',
                        arguments: {
                          'product': product,
                          'index': index,
                        },
                      );
                    },
                    child: Hero(
                      tag: 'detail_food$index',
                      child: FoodCard(
                        width: size.width / 2 - 30.0,
                        primaryColor: theme.primaryColor,
                        productName: product['name'],
                        productPrice: product['price'],
                        productUrl: product['image'],
                        productClients: product['clients'],
                        productRate: product['rate'],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
