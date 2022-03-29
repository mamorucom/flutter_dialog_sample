// // ignore_for_file: avoid_print

// import 'package:flutter/material.dart';

// class CustomMultipleDialog extends StatelessWidget {
//   const CustomMultipleDialog({
//     Key? key,
//     required this.title,
//     required this.contentWidget,
//     this.cancelActionText,
//     this.cancelAction,
//     required this.defaultActionText,
//   }) : super(key: key);

//   final String title;
//   final String labelText;
//   final List<T> list;
//   final List<String> allTitles;
//   final T selectedValue;
//   final Function(dynamic) onPressed;

//   final Widget contentWidget;
//   final String? cancelActionText;
//   final Function? cancelAction;
//   final String defaultActionText;

//   @override
//   Widget build(BuildContext context) {
//     final List<SimpleDialogOption> simpleDialogOptionItems = [];

//     for (int i = 0; i < list.length; i++) {
//       simpleDialogOptionItems.add(
//         SimpleDialogOption(
//           child: Text(labelText),
//           onPressed: () {
//             onPressed();
//           },
//         ),
//       );
//     }

//     return SimpleDialog(
//       title: Text(title),
//       children: simpleDialogOptionItems,
//     );
//   }
// }
