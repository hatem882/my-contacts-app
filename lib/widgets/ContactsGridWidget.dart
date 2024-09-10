import 'package:flutter/material.dart';
import 'package:my_contacts_app/SocialMediaClass.dart';
import 'package:my_contacts_app/widgets/SocialMediaIconWidget.dart';

class ContactsGrid extends StatelessWidget {
  const ContactsGrid({
    super.key,
    required this.socialMedia,
  });

  final List<socialMediaModel> socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: socialMedia.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (context, index) {
          return SocialmediaIconWidget(
              socialMedia: socialMedia[index]);
        });
  }
}
