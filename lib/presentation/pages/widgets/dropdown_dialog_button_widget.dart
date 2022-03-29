import 'package:flutter/material.dart';
import 'package:flutter_dialog_sample/presentation/common_widgets/custom_alert_dialog.dart';
import 'package:flutter_dialog_sample/presentation/common_widgets/custom_dropdown.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../dialog_sample_notifier.dart';

enum DropdownItemType {
  item1,
  item2,
  item3,
}

class DropDownItem {
  static const Map<DropdownItemType, String> allItems = {
    DropdownItemType.item1: '項目1',
    DropdownItemType.item2: '項目2',
    DropdownItemType.item3: '項目3',
  };
}

class DropdownDialogButtonWidget extends HookConsumerWidget {
  const DropdownDialogButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dialogSampleStateProvider);
    final notifier = ref.watch(dialogSampleStateProvider.notifier);
    final itemType = useState<DropdownItemType>(state.itemType);

    return ElevatedButton(
      child: const Text('ドロップダウンダイアログボタン'),
      onPressed: () => showDialog(
        context: context,
        builder: (context) => CustomAlertDialog(
          title: 'ドロップダウンダイアログ',
          contentWidget: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomDropdown<DropdownItemType>(
                labelText: '',
                list: DropDownItem.allItems.keys.toList(),
                allTitles: DropDownItem.allItems.entries
                    .map(
                      (e) => e.value,
                    )
                    .toList(),
                selectedValue: itemType.value,
                onChanged: (value) => itemType.value = value!,
              ),
            ],
          ),
          cancelActionText: 'Cancel',
          cancelAction: () {
            itemType.value = state.itemType;
          },
          defaultActionText: 'OK',
          action: () {
            notifier.save(
              itemType: itemType.value,
            );
          },
        ),
      ),
    );
  }
}
