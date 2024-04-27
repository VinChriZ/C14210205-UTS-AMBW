import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Food Delivery App',
    home: const MostPopular(),
  ));
}

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Most Popular'),
      ),
      body: ListView(
        children: const <Widget>[
          Restaurant(
            name: 'Fish King',
            address: '122 King Street',
            cuisine: 'Fish, American',
            imageUrl: 'lib/images/popular1.jpg',
            price: '\$25 - \$40',
            rating: '4.4',
          ),
          Restaurant(
            name: 'Olive Garden',
            address: '12 Arthur Street',
            cuisine: 'Pasta, Italian',
            imageUrl: 'lib/images/popular2.jpg',
            price: '\$15 - \$30',
            rating: '4.3',
          ),
          Restaurant(
            name: 'Red Lobster',
            address: '22 Prawn Street',
            cuisine: 'Seafood, American',
            imageUrl: 'lib/images/popular3.jpg',
            price: '\$25 - \$80',
            rating: '4.6',
          ),
          Restaurant(
            name: 'KFC Broadway',
            address: '122 Queen Street',
            cuisine: 'Fried Chicken, American',
            imageUrl: 'lib/images/popular4.jpg',
            price: '\$10 - \$20',
            rating: '4.7',
          ),
          Restaurant(
            name: 'FriednGrill',
            address: '45 Coal Street',
            cuisine: 'Grill and Fried, American',
            imageUrl: 'lib/images/popular5.jpg',
            price: '\$20 - \$50',
            rating: '4.9',
          ),
        ],
      ),
    );
  }
}

class Restaurant extends StatelessWidget {
  final String name;
  final String address;
  final String cuisine;
  final String imageUrl;
  final String price;
  final String rating;

  const Restaurant({
    Key? key,
    required this.name,
    required this.address,
    required this.cuisine,
    required this.imageUrl,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 253, 228),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '$address \n$cuisine',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '★ $rating',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
