import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_contacts_app/widgets/ContactsGridWidget.dart';
import 'package:my_contacts_app/SocialMediaClass.dart';
import 'package:my_contacts_app/widgets/SocialMediaIconWidget.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});
  final List<socialMediaModel> socialMedia = const [
    socialMediaModel(image: 'face', link: 'https://www.facebook.com'),
    socialMediaModel(image: 'insta', link: 'https://www.instagram.com'),
    socialMediaModel(image: 'linkedin', link: 'https://www.linkedin.com'),
    socialMediaModel(image: 'pinterest', link: 'https://www.pinterest.com'),
    socialMediaModel(image: 'snap', link: 'https://www.snapchat.com'),
    socialMediaModel(image: 'tiktok', link: 'https://www.tiktok.com'),
    socialMediaModel(image: 'twitter', link: 'https://www.twitter.com'),
    socialMediaModel(image: 'whatsapp', link: 'https://wa.me/+201061231448'),
    socialMediaModel(image: 'youtube', link: 'https://www.youtube.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/79911732_600465190780888_2416822631975092224_n.jpg'),
                  radius: 100,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Hatem Mohamed',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '+ 20 01157604500',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                ContactsGrid(socialMedia: socialMedia),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
