import 'package:flutter/material.dart';
import 'package:my_contacts_app/SocialMediaClass.dart';

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
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => ElevatedButton(
              onPressed: () {},
              child: Text('Start ${socialMedia.image}'),
            ),
          );
        },
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/${socialMedia.image!}.png' ),
          radius: 40,
        ),
      ),
    );
  }
}
