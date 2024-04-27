import 'package:flutter/material.dart';

class TopFoodie extends StatelessWidget {
  const TopFoodie({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> foodies = List.generate(
      20,
      (index) => {
        'name': 'Foodie ${index + 1}',
        'imageUrl': 'https://i.pravatar.cc/150?img=${index + 1}',
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('TopFoodie'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: foodies.length,
        itemBuilder: (context, index) {
          return Card(
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text(foodies[index]['name']),
              ),
              child:
                  Image.network(foodies[index]['imageUrl'], fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
