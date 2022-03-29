import 'package:flutter/material.dart';
import 'package:flutter_dialog_sample/presentation/common_widgets/custom_alert_dialog.dart';
import 'package:flutter_dialog_sample/presentation/common_widgets/custom_dropdown.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum CityType {
  tokyo,
  nagoya,
  osaka,
}

class City {
  static const Map<CityType, String> allItems = {
    CityType.tokyo: '東京',
    CityType.nagoya: '名古屋',
    CityType.osaka: '大阪',
  };
}

class DropdownDialogButtonWidget extends HookConsumerWidget {
  const DropdownDialogButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemType = useState<CityType>(CityType.tokyo);
    return ElevatedButton(
      child: const Text('ドロップダウンダイアログボタン'),
      onPressed: () => showDialog(
        context: context,
        builder: (context) => CustomAlertDialog(
          title: 'ドロップダウンダイアログ',
          contentWidget: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomDropdown<CityType>(
                labelText: '',
                list: City.allItems.keys.toList(),
                allTitles: City.allItems.entries
                    .map(
                      (e) => e.value,
                    )
                    .toList(),
                selectedValue: itemType.value,
                onChanged: (itemType) => itemType.value = itemType!,
              ),
            ],
          ),
          cancelActionText: 'Cancel',
          cancelAction: () {},
          defaultActionText: 'OK',
          action: () {
            // TODO: implement method
          },
        ),
      ),
    );
  }
}
