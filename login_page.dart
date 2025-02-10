import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/Controller/authControllrt.dart';
import 'package:first_project/Views/homeScreen.dart';
import 'package:first_project/Views/home_page.dart';
import 'package:first_project/Views/signinpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoginScrenn extends StatelessWidget {
  LoginScrenn({super.key});
  MyController ac = Get.put(MyController());

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/40.png",
                      width: 260,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 94, 210, 231)
                            .withOpacity(.2),
                      ),
                      child: TextFormField(
                        controller: ac.username,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your username";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.mark_email_unread),
                          border: InputBorder.none,
                          hintText: "Email",
                        ),
                      ),
                    ),
                    Obx(
                      () => Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 94, 210, 231)
                              .withOpacity(.2),
                        ),
                        child: TextFormField(
                          controller: ac.password,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password is required";
                            }
                            return null;
                          },
                          obscureText: ac.isVisible.value,
                          decoration: InputDecoration(
                              icon: const Icon(Icons.lock),
                              border: InputBorder.none,
                              hintText: "Password",
                              suffixIcon: IconButton(
                                onPressed: () {
                                  if (ac.isVisible.value) {
                                    ac.isVisible.value = false;
                                  } else {
                                    ac.isVisible.value = true;
                                  }
                                },
                                icon: Icon(ac.isVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 0, 99, 237)),
                      child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                           ac. Signing();
                          }
                        },
                        
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),  
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 55,
                    //   width: MediaQuery.of(context).size.width * .9,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(8),
                    //       color: const Color.fromARGB(255, 0, 99, 237)),
                    //   child: TextButton(
                    //     onPressed: () async {
                    //       if (formKey.currentState!.validate()) {
                    //        await FirebaseAuth.instance.signOut();
                    //       }
                    //     },
                        
                    //     child: const Text(
                    //       "Login",
                    //       style: TextStyle(color: Colors.white),  
                    //     ),
                    //   ),
                    // ),
                    // await FirebaseAuth.instance.signOut();

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(onPressed: () {
                          Get.to(()=> SigInScreen());
                        }, child: const Text("SIGN UP"))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
