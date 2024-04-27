import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/images/profile.jpg'),
            ),
            SizedBox(height: 8),
            Text('Tom Broody', style: Theme.of(context).textTheme.headline6),
            Text('Email: TomBr@Gmail.com'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Edit Profile'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
