import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog sample'),
        actions: const [],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        // 普通のダイアログ
        ElevatedButton(
          onPressed: () => showAlertDialog(),
          child: const Text('aaa'),
        ),
        // テキストフィールド
        ElevatedButton(
          onPressed: () => showTextFieldDialog(),
          child: const Text('テキストフィールド'),
        ),
        // チェックボックス
        ElevatedButton(
          onPressed:  () => showCheckboxDialog(),
          child: const Text('チェックボックス'),
        ),
        // リストボックス
        ElevatedButton(
          onPressed: () => showListboxDialog(),
          child: const Text('リストボックス'),
        ),
        // 3つ以上の選択肢
        ElevatedButton(
          onPressed: ,
          child: const Text('3つ以上の選択肢'),
        ),
        // AlertDialogとCupertinoAlertDialogを出し分ける
        ElevatedButton(
          onPressed: () => showDialog(),
          child: const Text('出し分け'),
        ),
      ],
    );
  }
}
