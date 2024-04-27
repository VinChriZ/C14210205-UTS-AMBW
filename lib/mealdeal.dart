import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Food Delivery App',
    home: const MealDeal(),
  ));
}

class MealDeal extends StatelessWidget {
  const MealDeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Deal'),
      ),
      body: ListView(
        children: const <Widget>[
          RestaurantCard(
            name: 'Burger Combo',
            address: '1 Kings Road',
            cuisine: 'Combo, Variety',
            imageUrl: 'lib/images/deal1.jpg',
            price: '\$19.99',
            rating: '4.8',
          ),
          RestaurantCard(
            name: 'Family Feast',
            address: '2 Kings Road',
            cuisine: 'Combo, Variety',
            imageUrl: 'lib/images/deal2.jpg',
            price: '\$29.99',
            rating: '4.7',
          ),
          RestaurantCard(
            name: 'Family Feast',
            address: '3 Kings Road',
            cuisine: 'Combo, Variety',
            imageUrl: 'lib/images/deal3.jpg',
            price: '\$49.99',
            rating: '4.6',
          ),
          RestaurantCard(
            name: 'Family Feast',
            address: '4 Kings Road',
            cuisine: 'Combo, Variety',
            imageUrl: 'lib/images/deal4.jpg',
            price: '\$19.99',
            rating: '4.5',
          ),
          RestaurantCard(
            name: 'Family Feast',
            address: '5 Kings Road',
            cuisine: 'Combo, Variety',
            imageUrl: 'lib/images/deal5.jpg',
            price: '\$49.99',
            rating: '4.4',
          ),
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String name;
  final String address;
  final String cuisine;
  final String imageUrl;
  final String price;
  final String rating;

  const RestaurantCard({
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
