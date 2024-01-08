import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:horyal_coffee/constants.dart';
import 'package:horyal_coffee/views/ProductInfo.dart';
import 'package:horyal_coffee/views/success.dart';

double deliveryAmount = 2;
double total = 0;

class CheckoutPage extends StatefulWidget {
  CheckoutPage(
      {super.key, required this.img, required this.price, required this.qtty});
  final double price;
  final int qtty;
  final String img;
  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: ListTile(
          title: Text(
            'Horyaal - CSB Mail',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'Distance from you 1.2 km',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: kSecondaryColor,
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
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Deliver To',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // Gap(10),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/map.gif"),
              ),
              Gap(20),
              Column(
                children: [
                  Text(
                    'Somalia Mogadishu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text("Digfeer, Road, Hodan"),
                ],
              ),
              Gap(175),
              Icon(Icons.arrow_forward_ios, size: 26),
            ],
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: const Divider(
              height: 1,
              thickness: 2.5,
              color: Color(0xff321D0B),
            ),
          ),
          Gap(20),
          Row(
            children: [
              Image(
                image: AssetImage("assets/del.png"),
                height: 60,
              ),
              Text(
                'Delivery',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(140),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Change Option',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ))
            ],
          ),
          Gap(5),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Summary',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add items',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ))
              ],
            ),
          ),
          Gap(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Image.asset(widget.img),
                ),
                Gap(20),
                Text(qtty.toString() + " Item (s)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
                Gap(160),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: const Divider(
              height: 1,
              thickness: 2.5,
              color: Color(0xff321D0B),
            ),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$ ' + widget.price.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Fee',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$ ' + deliveryAmount.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Payment Details',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Gap(10),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      '\$',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: kPrimaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    '\$' +
                        (deliveryAmount.toDouble() + widget.price.toDouble())
                            .toString(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          Gap(10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 2,
                  spreadRadius: 1,
                )
              ]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 8),
                          child: Text(
                            '\$' +
                                (deliveryAmount.toDouble() +
                                        widget.price.toDouble())
                                    .toString(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 5),
                      child: GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SuccessPage())),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: kSecondaryColor.withOpacity(0.2),
                                  width: 1.2),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(6, 0),
                                  color: Colors.white.withOpacity(0.1),
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                )
                              ]),
                          child: Text(
                            'Place Order',
                            style: TextStyle(
                              fontSize: 20,
                              color: kSecondaryColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
