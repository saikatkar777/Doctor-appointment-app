// import 'package:first_project/Views/doctor_profile2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/Views/homeScreen.dart';
import 'package:first_project/Views/login_page.dart';
import 'package:first_project/Views/profile.dart';
import 'package:first_project/Views/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  RxInt tabIndex = 0.obs;

  Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> myPages = <Widget>[
      Homescreen(), //0
      mySearchbar(), //1
      Profilepage() ,//2
    ];
    return Obx(() => SafeArea(
      child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Good Afternoon'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                  },
                ),
              ],
            ),
            drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 98, 255),
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 0, 98, 255)),
                  accountName: Text(
                    "Christian Bale",
                    style: TextStyle(fontSize: 12),
                  ),
                  accountEmail: Text("balechristian977@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    child: Text(
                      "C",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              // ListTile(
              //   leading: const Icon(Icons.person),
              //   title: const Text(' My Profile '),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
              // ListTile(
              //   leading: const Icon(Icons.book),
              //   title: const Text(' My Course '),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
              // ListTile(
              //   leading: const Icon(Icons.workspace_premium),
              //   title: const Text(' Go Premium '),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
              ListTile(
                leading: const Icon(Icons.video_label),
                title: const Text('Ubdate'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text(' Edit Profile Details '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Get.off(LoginScrenn());
                },
              ),
            ],
          ),
        ), 
            body: myPages.elementAt(tabIndex.value),
            bottomNavigationBar:  NavigationBar(
                  onDestinationSelected: (int index) {
                    tabIndex.value = index;
                    
                    //  Navigator.push(context,MaterialPageRoute(builder: (context)=>Profilepage()),);
              },
              indicatorColor: Colors.amber,
              selectedIndex: tabIndex.value,
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(Icons.home),
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Badge(child: Icon(Icons.search_sharp)),
                  label: 'search',
                ),
                NavigationDestination(
                  icon: Badge(
                    label: Text('2'),
                    child: Icon(Icons.person_sharp),
                  ),
                  label: 'profile',
                ),
              ],
            ),
      ),
    ));
  }
}

class SpecialistCard extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  const SpecialistCard(
      {super.key,
      required this.label,
      required this.color,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 40),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        DoctorCard(
          name: 'Dr. Dharmesh Solanki',
          image: "assets/photo2.png",
          specialty: 'Cardiologist',
          rating: 5,
          onPressed: () {},
        ),
        DoctorCard(
          name: 'Dr. Kapil Virpariya',
          image: "assets/photo2.png",
          specialty: 'Cardiologist',
          rating: 4,
          onPressed: () {},
        ),
        DoctorCard(
          name: 'Dr. Jaydeep Desai',
          image: "assets/photo2.png",
          specialty: 'Cardiologist',
          rating: 4,
          onPressed: () {},
        ),
        DoctorCard(
          name: 'Dr. Priti Roy',
          image: "assets/photo2.png",
          specialty: 'Dentist',
          rating: 4,
          onPressed: () {},
        ),
        DoctorCard(
          name: 'Dr. Pradeep Mittal',
          image: "assets/photo2.png",
          specialty: 'Dentist',
          rating: 5,
          onPressed: () {},
        ),
        DoctorCard(
          name: 'Dr. Sumeet Ghosh',
          image: "assets/photo2.png",
          specialty: 'Eye Specialist',
          rating: 4,
          onPressed: () {},
        ),
      ],
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final int rating;
  final String image;
  final VoidCallback onPressed;

  const DoctorCard(
      {super.key,
      required this.name,
      required this.specialty,
      required this.rating,
      required this.image,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Color.fromARGB(255, 224, 239, 254),
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
          title: Text(name),
          subtitle: Text(specialty),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(5, (index) {
              return Icon(
                index < rating ? Icons.star : Icons.star_border,
                color: Colors.amber,
              );
            }),
          ),
        ),
      ),
    );
  }
}
