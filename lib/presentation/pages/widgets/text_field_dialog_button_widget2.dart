import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialog_sample/presentation/common_widgets/custom_text_field_dialog.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../dialog_sample_notifier.dart';

class TextFieldDialogButtonWidget2 extends HookConsumerWidget {
  const TextFieldDialogButtonWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dialogSampleStateProvider);
    final notifier = ref.watch(dialogSampleStateProvider.notifier);
    final nameController = useTextEditingController(text: state.name);
    final numberController = useTextEditingController(text: state.number);
    return ElevatedButton(
        child: const Text('テキストフィールドダイアログボタン2'),
        onPressed: () {
          if (kIsWeb || Platform.isAndroid) {
            showDialog(
              context: context,
              builder: (context) => CustomTextFieldDialog(
                title: 'テキストフィールドダイアログ2',
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
                cancelAction: () {
                  nameController.text = state.name;
                  numberController.text = state.number;
                },
                defaultActionText: 'OK',
                action: () {
                  notifier.save(
                    name: nameController.text,
                    number: numberController.text,
                  );
                },
              ),
            );
          } else {
            showCupertinoDialog(
              context: context,
              builder: (context) => CustomTextFieldDialog(
                title: 'テキストフィールドダイアログ2',
                contentWidget: Card(
                  color: Colors.transparent,
                  elevation: 0.0,
                  child: Column(
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
                ),
                cancelActionText: 'Cancel',
                cancelAction: () {
                  nameController.text = state.name;
                  numberController.text = state.number;
                },
                defaultActionText: 'OK',
                action: () {
                  notifier.save(
                    name: nameController.text,
                    number: numberController.text,
                  );
                },
              ),
            );
          }
        });
  }
}
