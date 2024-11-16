import 'package:flutter/material.dart';
import 'package:quick_foodie/utils/asset_path.dart';
import 'package:quick_foodie/widgets/category_widget.dart';
import 'package:quick_foodie/widgets/widgets_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool burger = false;
  bool salad = false;
  bool pizza = false;
  bool ice_crema = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Abdullah,',
                  style: AppWidget.boldTextFieldStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    size: 28,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Delicious Food',
              style: AppWidget.headLineTextFieldStyle(),
            ),
            Text(
              'Discover and Get Great Food',
              style: AppWidget.lightTextFieldStyle(),
            ),
            const SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
