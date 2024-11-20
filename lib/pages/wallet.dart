import 'package:flutter/material.dart';
import 'package:quick_foodie/utils/asset_path.dart';
import 'package:quick_foodie/widgets/widgets_support.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 5,
              child: Container(
                padding:const EdgeInsets.only(bottom: 10.0),
                child: Center(child: Text('Wallet',style: AppWidget.headLineTextFieldStyle(),)),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
              ),
              child: Row(
                children: [
                  Image.asset(AssetsPath.wallet,width: 60,height: 60,fit: BoxFit.cover,),
                  const SizedBox(width:40.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Wallet',style: AppWidget.lightTextFieldStyle(),),
                      Text("\$100",style: AppWidget.boldTextFieldStyle(),)
                    ],
                  )
                ],
              ),
            ),
             SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Text('Add Money',style:AppWidget.semiBoldTextFieldStyle(),),
             ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E2E2)),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text("\$100",style: AppWidget.semiBoldTextFieldStyle(),),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE9E2E2)),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text("\$500",style: AppWidget.semiBoldTextFieldStyle(),),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE9E2E2)),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text("\$1000",style: AppWidget.semiBoldTextFieldStyle(),),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE9E2E2)),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text("\$2000",style: AppWidget.semiBoldTextFieldStyle(),),
                ),

              ],
            ),
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.symmetric(vertical: 12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF008080),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: Text('Add Money',style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      )
    );
  }
}
