import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: 'Un hermoso paisaje',
            imageUrl:
                'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://img.freepik.com/free-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://media-exp1.licdn.com/dms/image/C561BAQGEbvT3SFyR9Q/company-background_10000/0/1582050035728?e=2147483647&v=beta&t=lxt09r99nB70MdZRGsnwgcBbBYkPuiIEIRf2Vk9lSb8',
          ),
        ],
      ),
    );
  }
}
