import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: "My Notes",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            "Welcome Back".text.fontWeight(FontWeight.bold).xl4.make(),
            "You ha've been missed".text.xl4.make(),
            const SizedBox(
              height: 50,
            ),

            // email
            TextFormField(
              decoration: InputDecoration(
                  hintText: "email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  filled: true,
                  prefixIcon: const Icon(Icons.email)),
            ),

            const SizedBox(
              height: 20,
            ),
            // password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  filled: true,
                  prefixIcon: const Icon(Icons.lock)),
            ),

            const SizedBox(
              height: 20,
            ),

            // button
            InkWell(
              onTap: () {},
              child: Center(
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Vx.green400),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: "Sing In"
                          .text
                          .color(Colors.white)
                          .fontWeight(FontWeight.bold)
                          .make(),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // not a member  register
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Not a member? ".text.make(),
                  "Register".text.fontWeight(FontWeight.bold).make(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
