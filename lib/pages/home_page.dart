import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crud/constants/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Signed in as ${user.email}'),
            MaterialButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              color: primaryColor,
              child: Text('Sign out'),
            )
          ],
        ),
      ),
    );
  }
}
