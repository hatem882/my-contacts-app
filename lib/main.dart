import 'package:flutter/material.dart';
import 'package:my_contacts_app/ContactsPage.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactsPage(),
    );
  }
}

