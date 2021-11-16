import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.black12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/plate-007.png",
                width: 80,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Sushi Party Set",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                  width: 10,
                ),
                Text(
                  "Sushi",
                  style: TextStyle(color: Colors.black26),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text(
                  "\$ 10.71",
                  style: TextStyle(color: Color(0xffff4848)),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.delete_forever_outlined,
                  color: Colors.black38,
                ),
                SizedBox(
                  height: 30,
                  width: 100,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.remove,
                      size: 15,
                      color: Color(0xffff4848),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Color(0xffff4848),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.add,
                      size: 15,
                      color: Color(0xffff4848),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
