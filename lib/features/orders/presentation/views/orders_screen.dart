import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghf/const.dart';
import 'package:shaghf/core/utils/app_router.dart';
import 'package:shaghf/features/orders/presentation/views/widgets/order_body.dart';

import '../../../../core/utils/style.dart';
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Orders',style: Styles.textStyle20.copyWith(color: KblackColor)),
        centerTitle: true,
        leading:  IconButton(
          icon: Icon(Icons.arrow_back_outlined,size: 25,),
          onPressed: () {
            GoRouter.of(context).push(AppRouter.KHomePage);
          },
        ),
      ),
      body:const OrderBody(),
    );
  }
}