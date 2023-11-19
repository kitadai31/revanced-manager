import 'package:flutter/material.dart';
import 'package:revanced_manager/ui/widgets/settingsView/settings_section.dart';
import 'package:revanced_manager/ui/widgets/settingsView/social_media_widget.dart';

class STeamSection extends StatelessWidget {
  const STeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsSection(
      title: 'settingsView.teamSectionTitle',
      children: <Widget>[
        SocialMediaWidget(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
        ),
      ],
    );
  }
}
