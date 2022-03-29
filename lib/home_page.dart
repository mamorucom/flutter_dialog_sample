import 'package:flutter/material.dart';
import 'package:flutter_dialog_sample/dialog/custom_alert_dialog.dart';
import 'package:flutter_dialog_sample/dialog/custom_text_field_dialog.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'dialog/custom_dropdown.dart';
import 'dialog/show_alert_dialog.dart';

///
///
/// 参考:
/// Andrea
/// https://github.com/bizz84/codewithandrea_flutter_packages
///
/// https://tech.excite.co.jp/entry/2021/05/18/120000
///
/// https://tech.excite.co.jp/entry/2021/05/18/120000#%E3%81%BE%E3%82%8B%E3%81%B0%E3%81%A4%E3%82%AF%E3%82%A4%E3%82%BA%E9%A2%A8%E6%A8%AA%E3%81%AB%E5%9D%87%E7%AD%89%E3%81%AB%E4%B8%A6%E3%81%B9%E3%82%8B
///
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog sample'),
        actions: const [],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: const Text('基本のAlertダイアログ'),
            onPressed: () => showAlertDialog(
              context,
              title: '基本のAlertダイアログ',
              content: 'This is an alert dialog.',
              cancelActionText: 'Cancel',
              cancelAction: () {},
              defaultActionText: 'OK',
              action: () {},
            ),
          ),
          const _AlertDialogButtonWidget(),

          const _TextFieldDialogButtonWidget(),

          const _DropdownDialogButtonWidget(),
          // ElevatedButton(
          //   child: const Text('エラーダイアログ'),
          //   onPressed: () => ErrorDialog(
          //     context: context,
          //     message: '',
          //   ).show(),
          // ),
          // // チェックボックス
          // ElevatedButton(
          //   onPressed: () => showCheckboxDialog(),
          //   child: const Text('チェックボックス'),
          // ),
          // // リストボックス
          // ElevatedButton(
          //   onPressed: () => showListboxDialog(),
          //   child: const Text('リストボックス'),
          // ),
          // // 3つ以上の選択肢
          // ElevatedButton(
          //   onPressed: () => showSimpleDialog(),
          //   child: const Text('3つ以上の選択肢'),
          // ),
          // // AlertDialogとCupertinoAlertDialogを出し分ける
          // ElevatedButton(
          //   onPressed: () => showPlatformDialog(),
          //   child: const Text('出し分け'),
          // ),
        ],
      ),
    );
  }
}

class _AlertDialogButtonWidget extends StatelessWidget {
  const _AlertDialogButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('基本のAlertダイアログボタン'),
      onPressed: () => showDialog(
        context: context,
        builder: (context) => CustomAlertDialog(
          title: '基本のAlertダイアログ',
          contentWidget: const Text('This is an alert dialog.'),
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

class _TextFieldDialogButtonWidget extends HookConsumerWidget {
  const _TextFieldDialogButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final numberController = useTextEditingController();
    return ElevatedButton(
      child: const Text('テキストフィールドダイアログボタン'),
      onPressed: () => showDialog(
        context: context,
        builder: (context) => CustomTextFieldDialog(
          title: 'テキストフィールドダイアログ',
          contentWidget: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: nameController,
                maxLength: 10,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: '名前',
                  errorMaxLines: 2,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    // return 'Name must not be null or empty.';
                    return '名前を入力してください。';
                  }
                  if (value.length > 10) {
                    return '';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: numberController,
                maxLength: 10,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: '番号',
                  errorMaxLines: 2,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    // return 'Number must not be null or empty.';
                    return '番号を入力してください。';
                  }
                  if (value.length > 10) {
                    return '';
                  }
                  return null;
                },
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

class _DropdownDialogButtonWidget extends HookConsumerWidget {
  const _DropdownDialogButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemType = useState<DropdownItemType>(DropdownItemType.item1);
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
