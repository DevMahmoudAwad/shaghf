import 'package:flutter/material.dart';
import 'package:shaghf/features/photosession_screen/presentation/views/widgets/photosession1_widget.dart';
import 'package:shaghf/features/photosession_screen/presentation/views/widgets/photosession2_widget.dart';
import 'package:shaghf/features/photosession_screen/presentation/views/widgets/photosession3_widget.dart';
import 'package:shaghf/features/photosession_screen/presentation/views/widgets/photosession_button_widget.dart';

class PhotosessionPage extends StatelessWidget {
  const PhotosessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Session"),
        centerTitle: true,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: Column(
        children: [
          Photosession1Widget(),
          Photosession2Widget(),
          Photosession3Widget(),
          PhotosessionButtonWidget()
        ],
      ),
    );
  }
}
