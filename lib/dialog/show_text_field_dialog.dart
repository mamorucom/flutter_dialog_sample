import 'package:flutter/material.dart';

Future<bool?> showTextFiledDialog(
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
      content: Text(content),
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



// // part of alert_dialogs;
// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// ///
// /// Andreaコード流用
// /// https://github.com/bizz84/codewithandrea_flutter_packages/tree/master/packages
// ///
// Future<bool?> showAlertDialog({
//   required BuildContext context,
//   required String title,
//   required String content,
//   String? cancelActionText,
//   required String defaultActionText,
// }) async {
//   if (kIsWeb || !Platform.isIOS) {
//     return showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(title),
//         content: Text(content),
//         actions: <Widget>[
//           if (cancelActionText != null)
//             TextButton(
//               child: Text(cancelActionText),
//               onPressed: () => Navigator.of(context).pop(false),
//             ),
//           TextButton(
//             child: Text(defaultActionText),
//             onPressed: () => Navigator.of(context).pop(true),
//           ),
//         ],
//       ),
//     );
//   }
//   return showCupertinoDialog(
//     context: context,
//     builder: (context) => CupertinoAlertDialog(
//       title: Text(title),
//       content: Text(content),
//       actions: <Widget>[
//         if (cancelActionText != null)
//           CupertinoDialogAction(
//             child: Text(cancelActionText),
//             onPressed: () => Navigator.of(context).pop(false),
//           ),
//         CupertinoDialogAction(
//           child: Text(defaultActionText),
//           onPressed: () => Navigator.of(context).pop(true),
//         ),
//       ],
//     ),
//   );
// }
