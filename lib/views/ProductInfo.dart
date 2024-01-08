// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:horyal_coffee/constants.dart';
import 'package:horyal_coffee/views/mybasket.dart';
import 'package:horyal_coffee/widgets/round_button.dart';

int qtty = 1;
String title = "Micchiato Short";

class ProductInfo extends StatefulWidget {
  ProductInfo(
      {super.key,
      required this.img1,
      // required this.img2,
      // required this.img3,
      // required this.img4,
      required this.price});

  // static final String? title;
  double price;
  final String img1;

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  // final String img2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(widget.img1),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_rounded,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '\$' + widget.price.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        qtty.toString() + " Item (s)",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Gap(5),
                ],
              ),
            ),
          ),
          Gap(10),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              height: 310,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Special Instructions ',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                      ),
                      children: [
                        TextSpan(
                          text: '(optinal)',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Gap(10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 100,
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "E.g No Aninos, Please",
                        hintStyle: TextStyle(color: Color(0xff808080)),

                        // filled: true, // Set filled to true to enable background color
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Gap(15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundButton(
                        icon: Icons.remove,
                        onpressed: () {
                          setState(() {
                            qtty--;
                            // widget.price = qtty * widget.price;
                          });
                        },
                      ),
                      Gap(30),
                      RoundButton(
                        icon: Icons.add,
                        onpressed: () {
                          setState(() {
                            qtty++;
                          });
                        },
                      ),
                    ],
                  ),
                  Gap(30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => MyBasketPage(
                                    img: widget.img1,
                                    title: title,
                                    qtty: qtty,
                                    price: widget.price,
                                  )));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryColor, width: 1.5),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Add To Basket",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kSecondaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
