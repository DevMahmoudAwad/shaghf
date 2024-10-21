import 'package:flutter/material.dart';
import 'package:shaghf/const.dart';
import 'package:shaghf/features/orders/presentation/views/widgets/order_body.dart';

import '../../../../core/utils/style.dart';
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Orders',style: Styles.textStyle20.copyWith(color: KblackColor)),
        centerTitle: true,
        leading:  IconButton(
          icon: Icon(Icons.arrow_back_outlined,size: 25,),
          onPressed: () {

          },
        ),
      ),
      body:const OrderBody(),
    );
  }
}