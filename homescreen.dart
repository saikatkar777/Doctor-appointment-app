import 'dart:ui';

import 'package:first_project/Views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homescreen extends StatelessWidget {
   Homescreen({super.key});
final sysDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hello "Darshak"',
                style: TextStyle(
                    fontSize: 20,
                    //  fontStyle: FontStyle.italic,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16.0),
            //   child: Text(
            //     'We care for you',
            //     style: TextStyle(
            //         fontSize: 20,
            //         color: Colors.grey,
            //         fontWeight: FontWeight.normal),
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Let's Find Your                 Doctor",
                style: TextStyle(
                    fontSize: 30,
                    // fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 0, 115, 255),
                    fontWeight: FontWeight.w600),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(50.0),
            //     child: BackdropFilter(
            //       filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            //       child: Container(
            //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //         color: Colors.grey.withOpacity(0.1),
            //         child: const TextField(
            //           decoration: InputDecoration(
            //             hintText: 'Search doctor',
            //             prefixIcon: Icon(Icons.search),
            //             border: InputBorder.none,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Specialists',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SpecialistCard(
                    label: 'Cardiologist',
                    color: const Color.fromARGB(255, 198, 1, 67),
                    icon: Icons.favorite,
                    onPressed: () {
                      // Your onPressed action here
                      print('Cardiologist pressed');
                    },
                  ),
                  SpecialistCard(
                    label: 'Dentist',
                    color: Color.fromARGB(255, 1, 9, 222),
                    icon: FontAwesomeIcons.tooth,
                    onPressed: () {
                      // Your onPressed action here
                      print('Dentist pressed');
                    },
                  ),
                  SpecialistCard(
                    label: 'Eye Specialist',
                    color: Color.fromARGB(255, 229, 191, 0),
                    icon: Icons.remove_red_eye,
                    onPressed: () {
                      // Your onPressed action here.

                      print('Eye Specialist pressed');
                    },
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Top Rated',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            DoctorList(),
          ],
        ),
      ),
    );
  }
}
