import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:revanced_manager/gen/strings.g.dart';
import 'package:revanced_manager/ui/widgets/settingsView/social_media_item.dart';
import 'package:revanced_manager/ui/widgets/shared/custom_card.dart';
import 'package:revanced_manager/ui/widgets/shared/custom_icon.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
    this.padding,
  });
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: ExpandableThemeData(
        hasIcon: true,
        iconColor: Theme.of(context).iconTheme.color,
        iconPadding: const EdgeInsets.symmetric(vertical: 16.0)
            .add(padding ?? EdgeInsets.zero)
            .resolve(Directionality.of(context)),
        animationDuration: const Duration(milliseconds: 400),
      ),
      header: ListTile(
        contentPadding: padding ?? EdgeInsets.zero,
        title: Text(
          t.socialMediaCard.widgetTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(t.socialMediaCard.widgetSubtitle),
      ),
      expanded: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: const CustomCard(
          child: Column(
            children: <Widget>[
              SocialMediaItem(
                icon: FaIcon(FontAwesomeIcons.github),
                title: Text('GitHub'),
                subtitle: Text('kitadai31/revanced-manager-android5-7'),
                url: 'https://github.com/kitadai31/revanced-manager-android5-7',
              ),
              SocialMediaItem(
                icon: FaIcon(FontAwesomeIcons.telegram),
                title: Text('Telegram'),
                subtitle: Text('t.me/rvx_for_a6_7'),
                url: 'https://t.me/rvx_for_a6_7',
              ),
              SocialMediaItem(
                icon: FaIcon(FontAwesomeIcons.telegram),
                title: Text('Telegram chat group'),
                subtitle: Text('t.me/rvx_for_a6_7_chat'),
                url: 'https://t.me/rvx_for_a6_7_chat',
              ),
            ],
          ),
        ),
      ),
      collapsed: const SizedBox(),
    );
  }
}
