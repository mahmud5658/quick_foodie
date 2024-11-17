import 'package:flutter/material.dart';
import 'package:quick_foodie/utils/asset_path.dart';

import '../widgets/widgets_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20.0, right: 20.0,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(AssetsPath.dummyItem,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mediterrannean',
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                    Text(
                      'Chickpea Salad',
                      style: AppWidget.boldTextFieldStyle(),
                    )
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'A salad is a dish typically made with a mixture of fresh vegetables, fruits, herbs, and sometimes proteins, dressings, or grains.',
              style: AppWidget.lightTextFieldStyle(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Delivery Time',
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                const SizedBox(
                  width: 25.0,
                ),
                const Icon(
                  Icons.alarm,
                  color: Colors.black54,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '30 min',
                  style: AppWidget.semiBoldTextFieldStyle(),
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                    Text(
                      '28Tk.',
                      style: AppWidget.headLineTextFieldStyle(),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Text(
                        'Add to Cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      const SizedBox(width: 30.0,),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(8)),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}