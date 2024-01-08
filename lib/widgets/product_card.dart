import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:horyal_coffee/constants.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 2)
        ],
      ),
      margin: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              color: Colors.white,
              child: Image(
                image: AssetImage('assets/cover.PNG'),
              ),
            ),
          ),
          const Gap(1),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Michiato Short',
                  style: AppTheme.kCardTitle,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Coffee with suger',
                  style: AppTheme.kBodyText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$10',
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
          )
        ],
      ),
    );
  }
}
