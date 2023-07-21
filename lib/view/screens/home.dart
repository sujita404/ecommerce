import 'package:ecomerce/view/screens/cart.dart';
import 'package:ecomerce/view/screens/products.dart';
import 'package:ecomerce/view/utils/text.dart';
import 'package:ecomerce/view/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String email;
  const HomeScreen({super.key, required this.email});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(context: context, showNoti: true),
      drawer: CustomWidgets.customDrawer(context),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            print("curr Index: $value");
            setState(() {
              currIndex = value;
            });
          },
          currentIndex: currIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
          ]),
      body: (currIndex == 0) ? ProductScreen() : CartScreen(),
      // child: Text("Email: ${widget.email.replaceAll("@gmail.com", "")}"),
    );
  }
}
