import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter_application_1/login.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: <Widget>[
                    const SizedBox(height: 70.0),

                    const Text(
                      "Appointment",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Book Your Appointment",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Full Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Color.fromARGB(255, 0, 60, 255).withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.person)),
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                          hintText: "Doctor Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Color.fromARGB(255, 0, 60, 255).withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.person_4_outlined)),
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "Appoinment Date",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor:  Color.fromARGB(255, 0, 60, 255).withOpacity(0.1),
                        filled: true,
                        prefixIcon: const Icon(Icons.date_range),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "Phone No.",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor:  Color.fromARGB(255, 0, 60, 255).withOpacity(0.1),
                        filled: true,
                        prefixIcon: const Icon(Icons.call),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "Gender",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor:  Color.fromARGB(255, 0, 60, 255).withOpacity(0.1),
                        filled: true,
                        prefixIcon: const Icon(Icons.groups_2_outlined ),
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),

                    child: ElevatedButton(
                      
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Submit Sucessfully')) );},
                      child: const Text(
                        "Book Now",
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Color.fromARGB(255, 57, 133, 255),
                      ),
                    )
                ),

              //   const Center(child: Text("Or")),

              //   Container(
              //     height: 45,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(25),
              //       border: Border.all(
              //         color: Color(0xFFAEB027),
              //       ),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.white.withOpacity(0.5),
              //           spreadRadius: 1,
              //           blurRadius: 1,
              //           offset: const Offset(0, 1), // changes position of shadow
              //         ),
              //       ],
              //     ),
              //     child: TextButton(
              //       onPressed: () {},
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Container(
              //             height: 30.0,
              //             width: 30.0,
              //             decoration: const BoxDecoration(
              //               image: DecorationImage(
              //                   image:   AssetImage('assets/images/login_signup/google.png'),
              //                   fit: BoxFit.cover),
              //               shape: BoxShape.circle,
              //             ),
              //           ),

              //           const SizedBox(width: 18),

              //           const Text("Sign In with Google",
              //             style: TextStyle(
              //               fontSize: 16,
              //               color: Colors.purple,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),

              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       const Text("Already have an account?"),
              //       TextButton(
              //           onPressed: () {
              //             // Get.to(const LoginPage());
              //           },
              //           child: const Text("Login", style: TextStyle(color: Color.fromARGB(255, 4, 224, 78)),)
              //       )
              //     ],
              //   )
               ],
            ),
          ),
        ),
);
}
}
