
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:quick_foodie/pages/profile.dart';
import 'package:quick_foodie/pages/wallet.dart';
import 'package:quick_foodie/pages/home.dart';
import 'package:quick_foodie/pages/order.dart';



class MainBottomNav extends StatefulWidget {
  const MainBottomNav({super.key});

  @override
  State<MainBottomNav> createState() => _MainBottomNavState();
}

class _MainBottomNavState extends State<MainBottomNav> {

  int currentIndex = 0;
  late List<Widget> pages;
  late Home home;
  late Wallet wallet;
  late Profile profile;
  late Order order;

  @override
  void initState() {
    super.initState();
    home = const Home();
    wallet = const Wallet();
    profile = const Profile();
    order = const Order();
    pages = [home,order,wallet,profile];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        animationDuration: Duration(microseconds: 500),
        onTap: (int index){
          currentIndex = index;
          setState(() {

          });
        },
        backgroundColor: Colors.transparent,
          color: Colors.black,
          items:const  [
        Icon(Icons.home_outlined,color: Colors.white,),
        Icon(Icons.shopping_bag_outlined,color: Colors.white,),
        Icon(Icons.wallet_outlined,color: Colors.white,),
        Icon(Icons.person_outlined,color: Colors.white,),
      ]),
    );
  }
}
