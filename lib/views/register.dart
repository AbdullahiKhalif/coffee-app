import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:horyal_coffee/views/login.dart';

class RegeisterPage extends StatelessWidget {
  const RegeisterPage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/logo.png'),
              height: 120,
            ),
            const Gap(0),
            const Text(
              'REGISTER',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username *',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "You'r name",
                      hintStyle: TextStyle(color: Color(0xff808080)),
                      prefixIcon: Icon(
                        Icons.person,
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
            const Gap(5),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number *',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "+2526xxxxxxxxx",
                      hintStyle: TextStyle(color: Color(0xff808080)),
                      prefixIcon: Icon(
                        Icons.call,
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
            const Gap(5),
            const Padding(
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
                    decoration: InputDecoration(
                      hintText: "*********",
                      hintStyle: TextStyle(color: Color(0xff808080)),
                      prefixIcon: Icon(
                        FluentIcons.lock_closed_16_regular,
                        color: Color(0xff808080),
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
            const Gap(20),
            GestureDetector(
              onTap: () {
                // Add your logic for the "Sign In" action here
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
                    "Register",
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
                  const Text("Already have an account? "),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login here!",
                      style: TextStyle(
                          color: Color(0xffFF9314),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
