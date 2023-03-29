import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart2/components/shoppingcart_detail.dart';
import 'package:flutter_shoppingcart2/components/shoppingcart_header.dart';
import 'package:flutter_shoppingcart2/constants.dart';
import 'package:flutter_shoppingcart2/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:theme(),
      debugShowCheckedModeBanner: false,
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }
}

AppBar _buildShoppingCartAppBar() {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {},
    ),
    actions: [
      IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {},),
      SizedBox(width: 10),
    ],
    elevation: 0.0,
  );
}