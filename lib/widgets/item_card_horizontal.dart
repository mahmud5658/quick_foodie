import 'package:flutter/material.dart';
import 'package:quick_foodie/pages/details.dart';
import 'package:quick_foodie/widgets/widgets_support.dart';

import '../utils/asset_path.dart';

class ItemCardHorizontal extends StatelessWidget {
  const ItemCardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Details()));
      },
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AssetsPath.dummyItem,height: 150,width: 150,fit: BoxFit.cover,),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Veggie Taco Hash',style: AppWidget.semiBoldTextFieldStyle(),),
                  Text('Fresh and Healthy',style: AppWidget.lightTextFieldStyle(),),
                  Text('250Tk.',style: AppWidget.semiBoldTextFieldStyle())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}