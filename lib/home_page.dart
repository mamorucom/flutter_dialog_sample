import 'package:flutter/material.dart';

import 'dialog/show_alert_dialog.dart';
import 'dialog/show_listbox_dialog.dart';

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
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => showAlertDialog(
            context,
            title: '基本のAlertダイアログ',
            content: 'This is an alert dialog.',
            cancelActionText: 'Cancel',
            cancelAction: () {},
            defaultActionText: 'OK',
            action: () {},
          ),
          child: const Text('基本のAlertダイアログ'),
        ),
        // テキストフィールド
        ElevatedButton(
          onPressed: () => showTextFieldDialog(),
          child: const Text('テキストフィールド'),
        ),
        // チェックボックス
        ElevatedButton(
          onPressed: () => showCheckboxDialog(),
          child: const Text('チェックボックス'),
        ),
        // リストボックス
        ElevatedButton(
          onPressed: () => showListboxDialog(),
          child: const Text('リストボックス'),
        ),
        // 3つ以上の選択肢
        ElevatedButton(
          onPressed: () => showSimpleDialog(),
          child: const Text('3つ以上の選択肢'),
        ),
        // AlertDialogとCupertinoAlertDialogを出し分ける
        ElevatedButton(
          onPressed: () => showPlatformDialog(),
          child: const Text('出し分け'),
        ),
      ],
    );
  }
}
