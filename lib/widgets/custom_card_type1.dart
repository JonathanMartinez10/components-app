import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      child: Column(
        children: [
           ListTile(
            leading: Icon(
              Icons.photo,
              color: colors.primary,
            ),
            title: const Text('Soy un titulo'),
            subtitle: const Text(
                'Labore non anim non deserunt anim irure aliqua mollit dolore velit. Cupidatat enim consectetur nisi ad est quis exercitation ea. Aliquip dolor duis aliquip eu.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  //style: TextButton.styleFrom(primary: Colors.indigo),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  //style: TextButton.styleFrom(primary: Colors.indigo),
                  child: const Text('Ok'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
