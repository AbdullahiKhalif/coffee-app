import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:horyal_coffee/constants.dart';
import 'package:horyal_coffee/views/productList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String titleCup1 = "Michiato Short";
  final String descriptionCup1 = "Coffee with suger";
  final double priceCup1 = 10.0;
  final imgCup1 = "assets/cup4.png";
  final String titleCup2 = "Baydan Cofee";
  final descriptionCup2 = "Coffee without suger";
  final double priceCup2 = 5.0;
  final String imgCup2 = "assets/cup2.jpg";
  final String cup12 = "assets/cup1-2.jpg";
  final String cup13 = "assets/cup1-3.jpg";
  final String cup14 = "assets/cup1-4.jpeg";

  final String cup22 = "assets/cup2-2.jpg";
  final String cup23 = "assets/cup2-3.webp";
  final String cup24 = "assets/cup2-4.webp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            'Hello Horyaal !',
            style: TextStyle(
              color: kSecondaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.pin_drop_outlined,
                color: kPrimaryColor,
              ),
              Text(
                'MOGADISHU-So',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: kSecondaryColor,
                ),
                child: Icon(
                  Icons.splitscreen,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: kSecondaryColor,
                ),
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.all(3),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(color: Colors.amber, width: 2.5),
                  image: DecorationImage(
                    image: AssetImage('assets/cover.PNG'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'GET ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(
                              text: '50& ',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                height: 1.5,
                              ),
                            ),
                            TextSpan(
                              text: 'AS A HORYAAL COFEE',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Gap(20),
                      Text(
                        'COFFEE NOW',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Gap(5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'RECOMMENRD FOR YOU',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Gap(10),
              // Container(
              //   padding: const EdgeInsets.all(4),
              //   width: double.infinity,
              //   height: 300,
              //   child: ListView.builder(
              //       padding: const EdgeInsets.all(4),
              //       itemCount: 2,
              //       scrollDirection: Axis.horizontal,
              //       shrinkWrap: true,
              //       itemBuilder: (context, index) => ProductCard()),
              // ),
              // MasonryGridView(
              //   gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductList(
                                    img1: imgCup1,
                                    img2: cup12,
                                    img3: cup13,
                                    img4: cup14,
                                    title: titleCup1,
                                    price: priceCup1,
                                  )));
                    },
                    child: Container(
                      height: 260,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset(
                            imgCup1,
                          ),
                          Gap(10),
                          Text(
                            titleCup1,
                            style: AppTheme.kCardTitle,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            descriptionCup1,
                            style: AppTheme.kBodyText,
                          ),
                          Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$' + priceCup1.toString(),
                                style: AppTheme.kCardTitle,
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: kSecondaryColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductList(
                                    img1: imgCup2,
                                    img2: cup22,
                                    img3: cup23,
                                    img4: cup24,
                                    title: titleCup2,
                                    price: priceCup2,
                                  )));
                    },
                    child: Container(
                      height: 260,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset(
                            imgCup2,
                          ),
                          Gap(20),
                          Text(
                            titleCup2,
                            style: AppTheme.kCardTitle,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            descriptionCup2,
                            style: AppTheme.kBodyText,
                          ),
                          Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$' + priceCup2.toString(),
                                style: AppTheme.kCardTitle,
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: kSecondaryColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: kThirdColor,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.add,
                          size: 26,
                        ),
                        label: 'Order'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person_2_rounded,
                          size: 26,
                        ),
                        label: 'Info'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
