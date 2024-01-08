import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final String img = 'assets/cup4.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                // left: 0,
                // top: 0,
                child: Container(
                  width: double.infinity,
                  height: 312,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 199,
                child: Container(
                  width: 375,
                  height: 113,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, 1.00),
                      end: Alignment(0, -1),
                      colors: [Color(0xFF262626), Color(0x00040205)],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 223,
                child: Text(
                  'Horyal - CSB Mall',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 281,
                child: Container(
                  width: 161,
                  height: 15,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 0,
                        child: Text(
                          '\$5.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 70,
                        top: 0,
                        child: Text(
                          '8.00 AM - 12.00 PM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 14,
                          height: 14,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: []),
                        ),
                      ),
                      Positioned(
                        left: 54,
                        top: 0,
                        child: Container(
                          width: 14,
                          height: 14,
                          padding: const EdgeInsets.all(1.60),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 10.79,
                                height: 10.79,
                                child: Stack(children: []),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 48,
                        top: 6,
                        child: Container(
                          width: 2,
                          height: 2,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 260,
                child: Container(
                  width: 115,
                  height: 15,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 0,
                        child: Text(
                          '1.2 km',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 70,
                        top: 0,
                        child: Text(
                          '4.5 (342)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 14,
                          height: 14,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2.62, vertical: 1.75),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 8.75,
                                height: 10.50,
                                child: Stack(children: []),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 6,
                        child: Container(
                          width: 2,
                          height: 2,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 56,
                        top: 1,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFCBC00),
                            shape: StarBorder(
                              points: 5,
                              innerRadiusRatio: 0.38,
                              pointRounding: 0.40,
                              valleyRounding: 0,
                              rotation: 0,
                              squash: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 50,
                child: Container(
                  width: 32,
                  height: 32,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: ShapeDecoration(
                            color: Color(0x993D3D3D),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6,
                        top: 6,
                        child: Container(
                          width: 20,
                          height: 20,
                          padding: const EdgeInsets.symmetric(vertical: 4.17),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 323,
                top: 50,
                child: Container(
                  width: 32,
                  height: 32,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: ShapeDecoration(
                            color: Color(0x993D3D3D),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6,
                        top: 6,
                        child: Container(
                          width: 20,
                          height: 20,
                          padding: const EdgeInsets.only(
                            top: 2.96,
                            left: 2.13,
                            right: 2.04,
                            bottom: 2.90,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 15.83,
                                height: 14.14,
                                child: Stack(children: []),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 326,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFF9214)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F6C6C6C),
                        blurRadius: 11,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Hot Coffee',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFF9214),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 132,
                top: 326,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Iced Coffee',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFA3A3A3),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 249,
                top: 326,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Salads',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFA3A3A3),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 339,
                top: 326,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Burger & Sandwich',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFA3A3A3),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 370,
                child: Container(
                  width: 157,
                  height: 225,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 30,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 165,
                        child: SizedBox(
                          width: 137,
                          child: Text(
                            'Macchiato Short ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 191,
                        child: Text(
                          '\$ 5.00',
                          style: TextStyle(
                            color: Color(0xFFFF9214),
                            fontSize: 18,
                            fontFamily: 'Bebas Neue',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 189,
                        child: Container(
                          width: 26,
                          height: 26,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFF9214),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 5,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 157,
                          height: 157,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 157,
                                  height: 157,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/157x157"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 125,
                                top: 10,
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 22,
                                          height: 22,
                                          decoration: ShapeDecoration(
                                            color: Colors.white.withOpacity(
                                                0.20000000298023224),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 2,
                                        top: 2,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 616,
                child: Container(
                  width: 157,
                  height: 225,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 30,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 165,
                        child: SizedBox(
                          width: 137,
                          child: Text(
                            'Caramel Machiato',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 191,
                        child: Text(
                          '\$ 5.00',
                          style: TextStyle(
                            color: Color(0xFFFF9214),
                            fontSize: 18,
                            fontFamily: 'Bebas Neue',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 189,
                        child: Container(
                          width: 26,
                          height: 26,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFF9214),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 5,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 157,
                          height: 157,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 157,
                                  height: 157,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/157x157"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 125,
                                top: 10,
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 22,
                                          height: 22,
                                          decoration: ShapeDecoration(
                                            color: Colors.white.withOpacity(
                                                0.20000000298023224),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 2,
                                        top: 2,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 198,
                top: 370,
                child: Container(
                  width: 157,
                  height: 225,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 30,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 165,
                        child: SizedBox(
                          width: 137,
                          child: Text(
                            'Americano',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 191,
                        child: Text(
                          '\$ 5.00',
                          style: TextStyle(
                            color: Color(0xFFFF9214),
                            fontSize: 18,
                            fontFamily: 'Bebas Neue',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 189,
                        child: Container(
                          width: 26,
                          height: 26,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFF9214),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 5,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 157,
                          height: 157,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 157,
                                  height: 157,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/157x157"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 125,
                                top: 10,
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 22,
                                          height: 22,
                                          decoration: ShapeDecoration(
                                            color: Colors.white.withOpacity(
                                                0.20000000298023224),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 2,
                                        top: 2,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 198,
                top: 616,
                child: Container(
                  width: 157,
                  height: 225,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 30,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 165,
                        child: SizedBox(
                          width: 137,
                          child: Text(
                            'Espresso',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 191,
                        child: Text(
                          '\$ 5.00',
                          style: TextStyle(
                            color: Color(0xFFFF9214),
                            fontSize: 18,
                            fontFamily: 'Bebas Neue',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 189,
                        child: Container(
                          width: 26,
                          height: 26,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFF9214),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 5,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 157,
                          height: 157,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 157,
                                  height: 157,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/157x157"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 125,
                                top: 10,
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 22,
                                          height: 22,
                                          decoration: ShapeDecoration(
                                            color: Colors.white.withOpacity(
                                                0.20000000298023224),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 2,
                                        top: 2,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Stack(children: []),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 375,
                  height: 44,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 14,
                        top: 14,
                        child: SizedBox(
                          width: 54,
                          child: Text(
                            '9:41',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.30,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 336.33,
                        top: 17.33,
                        child: Container(
                          width: 24.33,
                          height: 11.33,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Opacity(
                                  opacity: 0.35,
                                  child: Container(
                                    width: 22,
                                    height: 11.33,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1, color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(2.67),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 2,
                                child: Container(
                                  width: 18,
                                  height: 7.33,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.33),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 316,
                        top: 17.33,
                        child: Container(
                          width: 15.33,
                          height: 11,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/15x11"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 294,
                        top: 17.67,
                        child: Container(
                          width: 17,
                          height: 10.67,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/17x11"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
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
