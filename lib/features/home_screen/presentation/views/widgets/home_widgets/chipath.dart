import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghf/core/utils/app_router.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/chippers.dart';

class ClipPathes extends StatelessWidget {
  const ClipPathes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: (){
            GoRouter.of(context).push(AppRouter.RoomsPath);
          },
          child: ClipPath(
            clipper: RoomsClip(),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xff20473E).withOpacity(.65),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 30.0,right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Courses",style: TextStyle(fontSize: 24,color: Colors.white,)),
                    const Spacer(),
                    const Image(image: AssetImage("images/room.png")),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Rooms
        Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.ordersViewRoute);
                  },
                  child: ClipPath(
                    clipper: OrdersClip(),
                    child: Container(
                      width: 163,
                      height: 210,
                      decoration: BoxDecoration(
                          color: Color(0xffF04C29),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding:  EdgeInsets.only(top: 56.0,left: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Orders",style: TextStyle(fontSize: 24,color: Colors.white,)),
                            Image(image: AssetImage('images/orders.png'),width: 115,height: 115,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.EventsScroll);
                  },
                  child: ClipPath(
                    clipper: EventsClip(),
                    child: Container(
                      width: 163,
                      height: 210,
                      decoration: BoxDecoration(
                          color: const Color(0xffF04C29).withOpacity(.65),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding:  EdgeInsets.only(top: 56.0,right: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Events",style: TextStyle(fontSize: 24,color: Colors.white,)),
                            Image(image: AssetImage('images/events.png'),width: 115,height: 115,),
                          ],
                        ),
                      ),                  ),
                  ),
                ),  //Events
              ],
            ),
          ],
        ),
      ],
    );
  }
}