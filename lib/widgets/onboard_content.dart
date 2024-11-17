

import 'package:quick_foodie/utils/asset_path.dart';

class OnboardContent {
  String? image;
  String? title;
  String? description;
  OnboardContent(
      {required this.image, required this.title, required this.description});


}

List<OnboardContent> contents = [
  OnboardContent(
      image: AssetsPath.page1,
      title: 'Select from Our\n     Best Menu',
      description: "Pick our food from our menu\n        More than 35 times"),
  OnboardContent(
      image: AssetsPath.page2,
      title: 'Easy and online payment',
      description:
      "You can pay cash on delivery and\n        Card payment available"),
  OnboardContent(
      image: AssetsPath.page3,
      title: 'Quick delivery at\n    Your Doorstep',
      description: "Deliver food at your\n          Doorstep")
];