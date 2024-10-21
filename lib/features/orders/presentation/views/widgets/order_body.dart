import 'package:flutter/material.dart';
import 'package:shaghf/core/utils/style.dart';

import '../../../../../const.dart';

class OrderBody extends StatefulWidget {
  const OrderBody({super.key});

  @override
  State<OrderBody> createState() => _OrderBodyState();
}

class _OrderBodyState extends State<OrderBody> {
  int totalPrice = 0;

  void updatePrice(int price) {
    setState(() {
      totalPrice = totalPrice + price;
    });
    setState(() {
      totalPrice = totalPrice - price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What’s on your mind?',
              style: Styles.textStyle16.copyWith(color: KblackColor),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/drink.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Cold Drinks',
                      style: Styles.textStyle14.copyWith(color: KredColor),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/hotdrink.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Hot Drinks',
                      style: Styles.textStyle14.copyWith(color: KblackColor),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/snanks.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Snacks',
                      style: Styles.textStyle14.copyWith(color: KblackColor),
                    ),
                  ],
                ),
              ],
            ),
            Items(
              imageUrl: 'images/water.jpg',
              title: 'Water',
              price: 10,
              onPriceUpdate: updatePrice,
              quiantity: 0,
            ),
            Items(
              imageUrl: 'images/water.jpg',
              title: 'Juice',
              price: 15,
              onPriceUpdate: updatePrice,
              quiantity: 0,
            ),
            Items(
              imageUrl: 'images/water.jpg',
              title: 'Fresh Juice',
              price: 20,
              onPriceUpdate: updatePrice,
              quiantity: 0,
            ),
            Items(
              imageUrl: 'images/water.jpg',
              title: 'Pepsi',
              price: 20,
              onPriceUpdate: updatePrice,
              quiantity: 0,
            ),
            Items(
              imageUrl: 'images/water.jpg',
              title: 'Fayrouz',
              price: 20,
              onPriceUpdate: updatePrice,
              quiantity: 0,
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(KgreenColor),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Next',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'EGP\t$totalPrice',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Items extends StatefulWidget {
  final String imageUrl;
  final String title;
  final int price;
  final int quiantity;

  final Function(int) onPriceUpdate;

  const Items({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onPriceUpdate,
    required this.quiantity,
  });

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  int quantity = 0;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(
          widget.imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.fill,
        ),
        title: Text(
          widget.title,
          style: Styles.textStyle16.copyWith(color: KblackColor),
        ),
        subtitle: Text(
          '${widget.price * quantity} LE',
          style: Styles.textStyle12
              .copyWith(fontWeight: FontWeight.w700, color: KblackColor),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (quantity > 0) {
                    quantity--;
                    widget.onPriceUpdate(-widget.price);
                  }
                  widget.onPriceUpdate(widget.price);
                  
                });
              },
              icon: Icon(Icons.remove),
            ),
            Text(quantity.toString()),
            IconButton(
              onPressed: () {
                setState(() {
                  quantity++;
                  widget.onPriceUpdate(widget.price);
                });
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
