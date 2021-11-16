import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
              child: Hero(
                tag: 'detail_food',
                child: Container(
                  alignment: Alignment.topCenter,
                  width: size.width,
                  height: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/plate-007.png"),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 0, right: 20, bottom: 20),
              child: Chip(
                label: const Text('Ramen'),
                backgroundColor: Color(0xffff4848),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                  child: Text(
                    "Chicken \nKarage",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "\$ 2.57",
                    style: TextStyle(
                        color: Color(0xffff4848),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(Icons.star),
                        color: Colors.black38,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(Icons.favorite),
                        color: Colors.black38,
                      ),
                      Text(
                        "247 favorit",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(Icons.timer),
                        color: Colors.black38,
                      ),
                      Text(
                        "15-20 min",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
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
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "With juicy marinated chicken coated in an ultra-crisp shell, Karaage (から揚げ) is a staple of Japanese home-cooking and one of the most popular items to pack into a bento box lunch in Japan",
                style: TextStyle(color: Colors.black38),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Ink(
                          decoration: ShapeDecoration(
                            color: Colors.black12,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            icon: Icon(
                              Icons.remove,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Ink(
                          decoration: ShapeDecoration(
                            color: Colors.black12,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    // vertical: 2.0,
                  ),
                  margin: const EdgeInsets.only(bottom: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xffff4848),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Add To Cart',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(Icons.card_travel),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
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
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Ink(
            decoration: ShapeDecoration(
              color: Color(0xffff4848), shape: CircleBorder(),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(100.0),
              // ),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {}),
          ),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
