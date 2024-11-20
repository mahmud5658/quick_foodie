import 'package:flutter/material.dart';
import 'package:quick_foodie/utils/asset_path.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: Column(
         children: [
           Stack(
             children: [
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height/4.3,
                 decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.vertical(
                     bottom: Radius.elliptical(MediaQuery.of(context).size.width, 105.0)
                   )
                 ),
               ),
               Center(
                 child: Container(
                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/6.5),
                   child: Material(
                     elevation: 10,
                     borderRadius: BorderRadius.circular(60),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(60),
                       child: Image.asset(AssetsPath.boy,height: 120,width: 120,fit: BoxFit.cover,),
                     ),
                   )
                 ),
               ),
               Padding(padding: EdgeInsets.only(top: 70),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Abdullah Al Mahmud',style: TextStyle(color: Colors.white,fontSize: 23.0,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),)
                   ],
                 ),
               )
             ],
           ),
           SizedBox(height: 20,),
           Container(
             margin: EdgeInsets.symmetric(horizontal: 20),
             child: Material(
               elevation: 2,
               child: Container(
                 padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Row(
                   children: [
                     Icon(Icons.person,color: Colors.black,),
                     SizedBox(width: 20,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Name',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600 ),),
                         Text('Abdulah Al Mahmud',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600 ),)
                       ],
                     )
                   ],
                 ),
               ),
             ),
           )
         ],
       ),
     )
   );
  }
}
