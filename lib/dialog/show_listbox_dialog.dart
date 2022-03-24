import 'package:flutter/material.dart';

Future<bool?> showListboxDialog(
  BuildContext context, {
  required String title,
  required String content,
  String? cancelActionText,
  Function? cancelAction,
  required String defaultActionText,
  Function? action,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Column(
        children: [
          Text(content),
        ],
      ),
      actions: [
        if (cancelActionText != null)
          TextButton(
            child: Text(cancelActionText),
            onPressed: () {
              if (action != null) {
                action();
              }
              Navigator.of(context).pop(false);
            },
          ),
        TextButton(
          child: Text(defaultActionText),
          onPressed: () {
            if (action != null) {
              action();
            }
            Navigator.of(context).pop(true);
          },
        ),
      ],
    ),
  );
}
