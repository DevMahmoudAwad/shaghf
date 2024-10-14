import 'package:flutter/material.dart';
import 'package:shaghf/core/utils/style.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/home_buttonnavigation_widget.dart';
import 'package:shaghf/features/offers/presentation/views/widgets/offer_scroll.dart';
class OffersPage extends StatelessWidget {
  const OffersPage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        title:const Text(
          'Offers',
          style:Styles.textStyle16 ,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.notifications_active_outlined,size: 25,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.list,size: 30,),
            onPressed: () {},
          ),
        ],
      ),
      body: OfferScroll(),
      bottomNavigationBar:
      const HomeButtonnavigationWidget(
        
      ),
    
    
    



    );
    
    

  }
  
}