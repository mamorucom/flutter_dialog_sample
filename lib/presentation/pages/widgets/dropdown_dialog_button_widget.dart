import 'package:flutter/material.dart';
import 'package:flutter_dialog_sample/presentation/common_widgets/custom_alert_dialog.dart';
import 'package:flutter_dialog_sample/presentation/common_widgets/custom_dropdown.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../dialog_sample_notifier.dart';

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
    final state = ref.watch(dialogSampleStateProvider);
    final notifier = ref.watch(dialogSampleStateProvider.notifier);
    final cityType = useState<CityType>(state.cityType);

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
                selectedValue: cityType.value,
                onChanged: (value) => cityType.value = value!,
              ),
            ],
          ),
          cancelActionText: 'Cancel',
          cancelAction: () {
            cityType.value = state.cityType;
          },
          defaultActionText: 'OK',
          action: () {
            notifier.save(
              cityType: cityType.value,
            );
          },
        ),
      ),
    );
  }
}