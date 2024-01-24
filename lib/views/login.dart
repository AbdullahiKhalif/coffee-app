import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:horyal_coffee/constants.dart';
import 'package:horyal_coffee/controller/auth_controller.dart';
import 'package:horyal_coffee/views/forget.dart';
import 'package:horyal_coffee/views/register.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthController _authController = Get.put(AuthController());

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool isHidden = true;

  clearFields() {
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/logo.png'),
              height: 120,
            ),
            const Gap(5),
            const Text(
              'LOGIN',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(15),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email *',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"),
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "person@gmail.com",
                      hintStyle: TextStyle(color: Color(0xff808080)),
                      prefixIcon: Icon(
                        FluentIcons.mail_16_regular,
                        color: Color(0xff808080),
                      ),
                      // filled: true, // Set filled to true to enable background color
                      fillColor: Color.fromARGB(255, 7, 7, 7),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFF9314),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffFF9314), width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(15),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password *',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: isHidden,
                    decoration: InputDecoration(
                      hintText: "*********",
                      hintStyle: TextStyle(color: Color(0xff808080)),
                      prefixIcon: Icon(
                        FluentIcons.lock_closed_16_regular,
                        color: Color(0xff808080),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        icon: Icon(
                          isHidden ? Icons.visibility_off : Icons.visibility,
                          color: kSecondaryColor,
                        ),
                      ),
                      // filled:
                      //     true, // Set filled to true to enable background color
                      fillColor: Color.fromARGB(255, 10, 10, 10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFF9314),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffFF9314), width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            GestureDetector(
              onTap: () {
                Get.off(ForgetPage());
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: TextStyle(
                        color: Color(0xffFF9314),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(10),
            GestureDetector(
              onTap: () {
                if (_emailController.text == "" ||
                    _passwordController.text == "") {
                  Get.snackbar(
                    'Required!',
                    'Email and password are both required',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                  return;
                } else {
                  _authController.signIn(
                      email: _emailController.text.trim(),
                      password: _passwordController.text.trim());
                }
              },
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff321D0B),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  InkWell(
                    onTap: () {
                      Get.off(RegeisterPage());
                    },
                    child: const Text(
                      "Register now!",
                      style: TextStyle(
                          color: Color(0xffFF9314),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/Google.png'),
                    height: 90,
                  ),
                  Image(
                    image: AssetImage('assets/Facebook.png'),
                    height: 90,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
