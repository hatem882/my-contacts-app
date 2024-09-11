import 'package:flutter/material.dart';
import 'package:my_contacts_app/SocialMediaClass.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  const StartSocialMedia({super.key, required this.socialMedia});

  final socialMediaModel socialMedia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            launchUrl(Uri.parse(socialMedia.link),
                mode: LaunchMode.externalApplication);
          },
          child: Text('Start social media'),
        ),
      ),
    );
  }
}
