import 'package:flutter/material.dart';


import '../components/textfield2.dart';
import 'image_cart.dart';
import 'image_data.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
         leading: IconButton(
                         color: Color.fromARGB(255, 0, 0, 0),

          icon: Icon(Icons.arrow_back),

          onPressed: () {
            
            Navigator.pop(context);
          },
        ),
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: CustomText()),
      body: GridView.builder(
        itemCount: imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemBuilder: (context, index) => ImageCart(
          imageData: imageList[index],
        ),
      ),
    );
  }
}