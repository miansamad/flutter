import 'package:flutter/material.dart';
import 'package:japfood/screens/checkout/checkout_screen.dart';
import 'package:japfood/screens/details/details_screen.dart';
import 'package:japfood/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      // home: DetailsScreen(),
      home: CheckoutScreen(),
    );
  }
}
