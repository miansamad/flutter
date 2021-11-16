import 'package:flutter/material.dart';
import 'package:japfood/screens/home/components/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Ink(
            decoration: ShapeDecoration(
              color: Color(0xffff4848),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
            ),
            child: IconButton(
              icon: Icon(
                Icons.card_travel,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
