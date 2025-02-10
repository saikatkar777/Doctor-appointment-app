import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('PROFILE'),
      //   titleTextStyle: const TextStyle(
      //     fontWeight: FontWeight.bold,
      //     fontSize: 24,
      //   ),
      //   backgroundColor: Colors.blue,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(30.0),
              child: const Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/photo1.png'),//Replace with your image URL
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Christian Bale',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text('balecheistian123@mail.com'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('0123456789'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.info),
                    title: Text('Bio'),
                    subtitle: Text('A healthy outside starts from the inside'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.history),
                    title: const Text('Appointment History'),
                    subtitle: const Text('Dr. Dharmesh Solanki\n16-08-2024'),
                    trailing: TextButton(
                      child: const Text('View all'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    //   bottomNavigationBar: BottomNavigationBar(
    //     items: const <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.search),
    //         label: 'Search',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.shopping_bag),
    //         label: 'Orders',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.person),
    //         label: 'Profile',
    //       ),
    //     ],
    //     currentIndex: 2,
    //     selectedItemColor: Colors.blue,
    //     onTap: (index) {
    //       // Handle bottom navigation tap
    //     },
    //  ),
);
}
}
