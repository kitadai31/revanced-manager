import 'package:flutter/material.dart';
import 'package:revanced_manager/app/app.locator.dart';
import 'package:revanced_manager/services/manager_api.dart';
import 'package:revanced_manager/ui/widgets/settingsView/settings_tile_dialog.dart';
import 'package:revanced_manager/ui/widgets/shared/custom_material_button.dart';
import 'package:stacked/stacked.dart';


class SRipLibs extends BaseViewModel {
  final ManagerAPI _managerAPI = locator<ManagerAPI>();

  Future<void> showRipLibsDialog(BuildContext context) async {
    int? groupValue = _managerAPI.getRipLibsSetting();

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('ripLibs'),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RadioListTile(
                    title: const Text('OFF'),
                    value: 0,
                    groupValue: groupValue,
                    onChanged: (int? value) {
                      setState(() {
                        groupValue = value;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text('Remove armeabi-v7a, x86, x86_64'),
                    subtitle: const Text('Optimized for arm64-v8a devices'),
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (int? value) {
                      setState(() {
                        groupValue = value;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text('Remove arm64-v8a, x86, x86_64'),
                    subtitle: const Text('Optimized for armeabi-v7a devices'),
                    value: 2,
                    groupValue: groupValue,
                    onChanged: (int? value) {
                      setState(() {
                        groupValue = value;
                      });
                    },
                  ),
                ],
              );
            },
          ),
          actions: <Widget>[
            CustomMaterialButton(
              isFilled: false,
              label: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // ダイアログを閉じる
              },
            ),
            CustomMaterialButton(
              label: const Text('OK'),
              onPressed: () {
                if (groupValue != null) {
                  _managerAPI.setRipLibsSetting(groupValue!); // 選択された値をsetValueに渡す
                }
                Navigator.of(context).pop(); // ダイアログを閉じる
              },
            ),
          ],
        );
      },
    );
  }
}

final sRipLibs = SRipLibs();

class SRipLibsUI extends StatelessWidget {
  const SRipLibsUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsTileDialog(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      title: 'settingsView.ripLibsLabel',
      subtitle: 'settingsView.ripLibsHint',
      onTap: () => sRipLibs.showRipLibsDialog(context),
    );
  }
}