
import 'package:flutter/material.dart';
import 'package:quick_foodie/pages/sign_up.dart';
import 'package:quick_foodie/utils/asset_path.dart';

import '../widgets/widgets_support.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFff5c30), Color(0xFFe74b1a)])),
          ),
          Container(
            margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: const Text(''),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              children: [
                Center(
                  child: Image.asset(AssetsPath.logo,
                    width: MediaQuery.of(context).size.width / 1.5,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Sign In',
                              style: AppWidget.headLineTextFieldStyle(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter email';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: AppWidget.semiBoldTextFieldStyle(),
                                prefixIcon: const Icon(Icons.email_outlined),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter password';
                                } else {
                                  return null;
                                }
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: AppWidget.semiBoldTextFieldStyle(),
                                prefixIcon:
                                const Icon(Icons.password_outlined),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                'Forgot Password?',
                                style: AppWidget.semiBoldTextFieldStyle(),
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    email = _emailController.text;
                                    password = _passwordController.text;
                                  });
                                }
                              },
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 8),
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFff5c30),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Center(
                                      child: Text(
                                        'Sign In',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            fontFamily: "Poppins",
                                            color: Colors.white),
                                      )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: Text(
                      "Don't have an account? SignUp",
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}