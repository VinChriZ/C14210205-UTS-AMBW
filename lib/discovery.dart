import 'package:flutter/material.dart';

class Discovery extends StatelessWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> discoveries = [
      {
        'title': 'Restaurant 1',
        'description': 'Delicious dishes at this Restaurant.',
        'imageUrl': 'lib/images/res1.jpg'
      },
      {
        'title': 'Restaurant 2',
        'description': 'Experience fine dining at this Restaurant.',
        'imageUrl': 'lib/images/res2.jpg'
      },
      {
        'title': 'Restaurant 3',
        'description': 'Cozy environment and tasty food at this Restaurant.',
        'imageUrl': 'lib/images/res3.jpg'
      },
      {
        'title': 'Restaurant 4',
        'description': 'Award-winning dishes at this Restaurant.',
        'imageUrl': 'lib/images/res4.jpg'
      },
      {
        'title': 'Restaurant 5',
        'description':
            'A modern touch to traditional flavors at this Restaurant.',
        'imageUrl': 'lib/images/res5.jpg'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Discovery'),
      ),
      body: ListView.builder(
        itemCount: discoveries.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.asset(discoveries[index]['imageUrl']),
                ListTile(
                  title: Text(discoveries[index]['title']),
                  subtitle: Text(discoveries[index]['description']),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
