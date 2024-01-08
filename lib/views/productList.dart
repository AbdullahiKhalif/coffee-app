import 'package:flutter/material.dart';
import 'package:horyal_coffee/widgets/chipWidget.dart';
import 'package:horyal_coffee/widgets/resubleCard.dart';

class ProductList extends StatelessWidget {
  const ProductList(
      {super.key,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.img4,
      required this.title,
      required this.price});

  final String title;
  final double price;
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
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
                    image: AssetImage(img1),
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
                    SizedBox(height: 50),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.black.withOpacity(0.4),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.pin_drop_outlined,
                                    size: 18.0,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    ' 12 km .',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(' ⭐ '),
                                  Text(
                                    '4.5 (342)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Icon(
                                    Icons.money_off_csred_rounded,
                                    size: 18.0,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    ' 5.0 .       ',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.watch_later_sharp,
                                    size: 18.0,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    ' 8:00-AM - 12:00:AM',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Chipwidget(chipLabel: 'All'),
                    Chipwidget(chipLabel: 'hot Coffee'),
                    Chipwidget(chipLabel: 'Cold Coffee'),
                    Chipwidget(chipLabel: 'Salads'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ResuableCard(
                      img: img1,
                      price: price,
                    ),
                    ResuableCard(
                      img: img2,
                      price: price,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    ResuableCard(
                      img: img3,
                      price: price,
                    ),
                    ResuableCard(
                      img: img4,
                      price: price,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
