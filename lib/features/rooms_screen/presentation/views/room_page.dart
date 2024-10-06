import 'package:flutter/material.dart';
import 'package:shaghf/features/rooms_screen/presentation/views/widgets/room_box.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Rooms",
            style: TextStyle(fontFamily: "Comfortaa"),
          ),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        body: ListView.builder(
          
          itemBuilder: (context, index) {
            return RoomBox(
                title: "Traning rooms", image:"rooms" , id: "1");
          },
          itemCount: 5,
          scrollDirection: Axis.vertical,
        ));
  }
}
