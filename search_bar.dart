import 'package:first_project/Views/doctor_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mySearchbar extends StatefulWidget {
  const mySearchbar({super.key});

  @override   
  State<mySearchbar> createState() => _UserListScreenState();
}





class _UserListScreenState extends State<mySearchbar> {

   final List<Map<String, dynamic>> _allUsers = [
    {
      
      "image":
          " assets/doctor3.png ",
     
      "id": 1,
      "name": "Dr. Dharmesh Solanki",
      "des": "cardiologist",
    },
    {
      "id": 2,
      "name": "Dr. Kapil Virpariya",
      "des": " Cardiologist ",
       "image":
          "assets/doctor2.png",
   
    },
    {
      "id": 3,
      "name": "Dr. Jaydeep Desai",
      "des": " cardiologist ",
        "image":
          "assets/doctor1.png",


     
    },

  ];

    List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    
    _foundUsers = _allUsers;
    super.initState();
  }

    void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      
    }

    
    setState(() {
      _foundUsers = results;
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      
        body:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                   ),
                ),
            ),
             const SizedBox(
              height: 20,
            ),


                        Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => InkWell(
                        onTap: (){
                          Get.to(() => DoctorProfile1());
                        },
                        child: Card(
                          elevation: 1,
                          margin: const EdgeInsets.symmetric(vertical: 2),
                          // backgroundColor: Color.fromARGB(255, 224, 239, 254),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30.0,
                              backgroundImage:
                                 AssetImage('assets/photo3.png'),
                              backgroundColor: Color.fromARGB(255, 224, 239, 254),
                            ),
                            title: Text(_foundUsers[index]['name']),
                            subtitle: Text('${_foundUsers[index]["des"]}'),
                          ),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found Please try with diffrent search',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ]),
        ),
);
}
}
