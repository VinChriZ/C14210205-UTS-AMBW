import 'package:flutter/material.dart';
import 'mostpopular.dart';
import 'mealdeal.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void _navigateToPopular(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MostPopular()));
  }

  void _navigateToDeals(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MealDeal()));
  }

  Widget _buildSectionTitle(String title, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text(
              'See all',
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalList(List<Restaurant> restaurants) {
    return Container(
      height: 240.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return _buildRestaurantItem(restaurants[index]);
        },
      ),
    );
  }

  Widget _buildRestaurantItem(Restaurant restaurant) {
    return Container(
      width: 250.0,
      margin: const EdgeInsets.all(8.0),
      child: Card(
        color: Color.fromARGB(255, 255, 253, 228),
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  restaurant.imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      restaurant.address,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 91, 91, 91),
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      restaurant.cuisineType,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 91, 91, 91),
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Sydney CBD',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for restaurants...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 189, 189, 189),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Stack(
                  children: [
                    Image.asset('lib/images/banner.jpg', fit: BoxFit.cover),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.transparent,
                            ],
                          ),
                        ),
                        child: const Text(
                          'Thai Style\n12 Places',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 1),
                                blurRadius: 2.0,
                                color: Color.fromARGB(150, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildSectionTitle(
              'Most Popular',
              () => _navigateToPopular(context),
            ),
            _buildHorizontalList(popularRestaurants),
            _buildSectionTitle(
              'Meal Deals',
              () => _navigateToDeals(context),
            ),
            _buildHorizontalList(dealRestaurants),
          ],
        ),
      ),
    );
  }
}

class Restaurant {
  final String imagePath;
  final String name;
  final String address;
  final String cuisineType;

  Restaurant({
    required this.imagePath,
    required this.name,
    required this.address,
    required this.cuisineType,
  });
}

List<Restaurant> popularRestaurants = [
  Restaurant(
    imagePath: 'lib/images/popular1.jpg',
    name: 'Fish King',
    address: '122 King Street',
    cuisineType: 'Fish, American',
  ),
  Restaurant(
    imagePath: 'lib/images/popular2.jpg',
    name: 'Olive Garden',
    address: '12 Arthur Street',
    cuisineType: 'Pasta, Italian',
  ),
  Restaurant(
    imagePath: 'lib/images/popular3.jpg',
    name: 'Red Lobster',
    address: '22 Prawn Street',
    cuisineType: 'Seafood, American',
  ),
  Restaurant(
    imagePath: 'lib/images/popular4.jpg',
    name: 'KFC Broadway',
    address: '122 Queen Street',
    cuisineType: 'Fried Chicken, American',
  ),
  Restaurant(
    imagePath: 'lib/images/popular5.jpg',
    name: 'FriednGrill',
    address: '45 Coal Street',
    cuisineType: 'Grill and Fried, American',
  ),
];

List<Restaurant> dealRestaurants = [
  Restaurant(
    imagePath: 'lib/images/deal1.jpg',
    name: 'Burger Combo',
    address: '1 Kings Road',
    cuisineType: 'Combo, Variety',
  ),
  Restaurant(
    imagePath: 'lib/images/deal2.jpg',
    name: 'Seafood Platter',
    address: '2 Kings Road',
    cuisineType: 'Combo, Variety',
  ),
  Restaurant(
    imagePath: 'lib/images/deal3.jpg',
    name: 'Chicken Combo',
    address: '3 Kings Road',
    cuisineType: 'Combo, Variety',
  ),
  Restaurant(
    imagePath: 'lib/images/deal4.jpg',
    name: 'Indian Platter',
    address: '4 Kings Road',
    cuisineType: 'Combo, Variety',
  ),
  Restaurant(
    imagePath: 'lib/images/deal5.jpg',
    name: 'Dessert Platter',
    address: '5 Kings Road',
    cuisineType: 'Combo, Variety',
  ),
];
