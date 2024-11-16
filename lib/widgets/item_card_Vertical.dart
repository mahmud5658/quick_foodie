import 'package:flutter/material.dart';
import 'package:quick_foodie/widgets/widgets_support.dart';

import '../utils/asset_path.dart';

class ItemCardVertical extends StatelessWidget {
  const ItemCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(AssetsPath.dummyItem,height: 150,width: 150,fit: BoxFit.cover,),
            const SizedBox(height: 6,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Veggie Taco Hash',style: AppWidget.semiBoldTextFeildStyle(),),
                Text('Fresh and Healthy',style: AppWidget.lightTextFieldStyle(),),
                Text('250Tk.',style: AppWidget.semiBoldTextFeildStyle())
              ],
            )
          ],
        ),
      ),
    );
  }
}