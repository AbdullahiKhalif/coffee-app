import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
// import 'package:horyal_coffee/widgets/customeLv.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:get/get.dart';
import 'package:horyal_coffee/controller/auth_controller.dart';
import 'package:horyal_coffee/widgets/customeLv.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/logo.png'),
                        ),
                        Gap(5),
                        Text(
                          'Horyaan Coffee',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //text
              Gap(20),
              CustomProfile(
                title: 'Edit Account info',
                LfluentIcon: FluentIcons.edit_16_regular,
                TfluentIcon: FluentIcons.chevron_right_24_regular,
              ),
              CustomProfile(
                title: 'Address Info',
                LfluentIcon: FluentIcons.location_24_regular,
                TfluentIcon: FluentIcons.chevron_right_24_regular,
              ),
              CustomProfile(
                title: 'Payment Method',
                LfluentIcon: FluentIcons.payment_24_regular,
                TfluentIcon: FluentIcons.chevron_right_24_regular,
              ),
              CustomProfile(
                title: 'Rewards or Coupon',
                LfluentIcon: FluentIcons.ticket_diagonal_24_regular,
                TfluentIcon: FluentIcons.chevron_right_24_regular,
              ),
              CustomProfile(
                title: 'Settings',
                LfluentIcon: FluentIcons.settings_24_regular,
                TfluentIcon: FluentIcons.chevron_right_24_regular,
              ),
              CustomProfile(
                title: 'About Coffee Now',
                LfluentIcon: FluentIcons.drink_coffee_24_regular,
                TfluentIcon: FluentIcons.chevron_right_24_regular,
              ),
              CustomProfile(
                title: 'Privacy Policy',
                LfluentIcon: FluentIcons.settings_24_regular,
                TfluentIcon: FluentIcons.chevron_right_24_regular,
              ),
              Gap(10),
              GestureDetector(
                onTap: () {
                  _authController.signOut();
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
                      "Logout",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
