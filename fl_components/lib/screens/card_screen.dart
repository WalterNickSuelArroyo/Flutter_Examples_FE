

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://media.macphun.com/img/uploads/macphun/blog/2063/_1.jpeg?q=75&w=1710&h=906&resize=cover', name: 'Un hermoso paisaje',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=2560x1440'),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://i.ytimg.com/vi/FuHcna7q15U/maxresdefault.jpg'),
          SizedBox(height: 100),
        ],
      )
    );
  }
}
