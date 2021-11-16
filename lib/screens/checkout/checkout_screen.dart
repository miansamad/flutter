import 'package:flutter/material.dart';

import 'components/card.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                card(),
                card(),
                card(),
                card(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sub Total"),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text("Tax"),
                          ),
                          Text("Delivery Fee"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("\$ 21.14"),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text("\$ 2.00"),
                          ),
                          Text("\$ 1.50"),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 0,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Total",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Text("\$ 24.64"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 150.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffff4848),
                  ),
                  child: Text(
                    'CHECKOUT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        "My Order",
        style: TextStyle(color: Colors.black),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {}),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
