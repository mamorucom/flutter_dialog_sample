// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CustomTextFieldDialog extends StatelessWidget {
  const CustomTextFieldDialog({
    Key? key,
    required this.title,
    required this.contentWidget,
    this.cancelActionText,
    this.cancelAction,
    required this.defaultActionText,
    this.action,
  }) : super(key: key);

  final String title;
  final Widget contentWidget;
  final String? cancelActionText;
  final Function? cancelAction;
  final String defaultActionText;
  final Function? action;

  @override
  Widget build(BuildContext context) {
    const key = GlobalObjectKey<FormState>('FORM_KEY');

    return AlertDialog(
      title: Text(title),
      content: Form(
        key: key,
        child: contentWidget,
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            if (cancelAction != null) cancelAction!();
            Navigator.of(context).pop(false);
          },
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            if (key.currentState!.validate()) {
              print('Validate OK');
              if (action != null) action!();
              Navigator.of(context).pop(true);
            } else {
              print('Validate NG');
            }
          },
        ),
      ],
    );
  }
}
