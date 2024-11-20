import 'package:flutter/material.dart';
import 'package:quick_foodie/pages/sign_up.dart';
import 'package:quick_foodie/widgets/widgets_support.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     body:Container(
       padding: const EdgeInsets.all(15),
       child: Center(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             const SizedBox(height: 100,),
             Text('Password Recovery',style: AppWidget.boldTextFieldStyle().copyWith(color: Colors.white),),
             const SizedBox(height: 10,),
             Text('Enter your email',style: AppWidget.lightTextFieldStyle().copyWith(color: Colors.white),),
             const SizedBox(height: 40,),
             TextFormField(
               style: TextStyle(color: Colors.white),
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.person,color: Colors.white,),
                 hintText: 'Email',
                 hintStyle: TextStyle(color: Colors.white),
                 border: _outlineInputBorder(),
                 enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                     borderSide:  BorderSide(
                         color: Colors.white
                     )
                 ),
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                     borderSide:  BorderSide(
                         color: Colors.white
                     )
                 ),
               ),
             ),
             const SizedBox(height: 30,),
             ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.white,
                     foregroundColor: Colors.black,
                     padding: const EdgeInsets.symmetric(vertical: 12),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(8),
                     ),
                     textStyle: const TextStyle(fontSize: 16),
                     fixedSize: const Size.fromWidth(double.maxFinite)),
                 onPressed: (){}, child: const Text('Send Email')),
             const SizedBox(height: 30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't have an account?",style: TextStyle(fontSize: 18,color: Colors.white),),
                 SizedBox(width: 5,),
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context)=> const SignUp()));
                   },
                   child: Text('Create',style: TextStyle(
                     color: Color.fromARGB(225, 184, 166, 6,),
                     fontSize: 20,
                     fontWeight: FontWeight.w500,
                   ),),
                 )
               ],
             )
             
           ],
         ),
       ),
     )
   );
  }
  OutlineInputBorder _outlineInputBorder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide:  BorderSide(
            color: Colors.white
        )
    );
  }
}
