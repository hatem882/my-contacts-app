import 'package:flutter/material.dart';
import 'package:my_contacts_app/SocialMediaClass.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialmediaIconWidget extends StatelessWidget {
  const SocialmediaIconWidget({
    super.key,
    required this.socialMedia,
  });
  final socialMediaModel socialMedia;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: () => launchUrl(Uri.parse(socialMedia.link),
            mode: LaunchMode.externalApplication),
        child: CircleAvatar(
          backgroundImage: AssetImage(socialMedia.image),
          radius: 40,
        ),
      ),
    );
  }
}
