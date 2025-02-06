import 'package:flutter/material.dart';
import 'package:revanced_manager/gen/strings.g.dart';
import 'package:revanced_manager/ui/views/settings/settings_viewmodel.dart';
import 'package:revanced_manager/ui/widgets/settingsView/settings_section.dart';
import 'package:revanced_manager/ui/widgets/settingsView/social_media_widget.dart';

final _settingsViewModel = SettingsViewModel();

class STeamSection extends StatelessWidget {
  const STeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsSection(
      title: t.settingsView.teamSectionTitle,
      children: const <Widget>[
        SocialMediaWidget(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
        ),
      ],
    );
  }
}
