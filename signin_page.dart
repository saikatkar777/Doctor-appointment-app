import 'package:first_project/Views/home_page.dart';
import 'package:first_project/Views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigInScreen extends StatelessWidget {

  final username = TextEditingController();
  final Password = TextEditingController();
  final confirmPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();
  RxBool isVisible = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ListTile(
                      title: Text(
                        "Register New Account",
                        style:
                            TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 94, 210, 231).withOpacity(.2),
                      ),
                      child: TextFormField(
                        controller: username,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your username";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: "Username",
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 94, 210, 231).withOpacity(.2),
                      ),
                      child: TextFormField(
                        controller: Password,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is required";
                          }
                          return null;
                        },
                        obscureText: isVisible.value,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock),
                            border: InputBorder.none,
                            hintText: "Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                isVisible.value == true;
                              },
                              icon: Icon(isVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 94, 210, 231).withOpacity(.2),
                      ),
                      child: TextFormField(
                        controller: confirmPassword,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is required";
                          } else if (Password.text != confirmPassword.text) {
                            return "Password does not match";
                          }
                          return null;
                        },
                        obscureText: isVisible.value,
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock),
                            border: InputBorder.none,
                            hintText: "Confirm password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                isVisible.value = true;
                              },
                              icon: Icon(isVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            )),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 0, 114, 237)),
                      child: TextButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {}
                          },
                          child: const Text(
                            "SIGN UP",
