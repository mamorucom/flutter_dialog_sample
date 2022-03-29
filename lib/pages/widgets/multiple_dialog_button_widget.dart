// import 'package:flutter/material.dart';
// import 'package:flutter_dialog_sample/common_widgets/custom_alert_dialog.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// enum DepartmentType {
//   sales,
//   manufacturing,
//   engineering,
// }

// class Department {
//   static const Map<DepartmentType, String> allItems = {
//     DepartmentType.sales: '営業部',
//     DepartmentType.manufacturing: '製造部',
//     DepartmentType.engineering: '技術部',
//   };
// }

// class MultipleDialogButtonWidget extends HookConsumerWidget {
//   const MultipleDialogButtonWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return ElevatedButton(
//         child: const Text('シンプルダイアログボタン'),
//         onPressed: () async {
//           switch (await showDialog<DepartmentType>(
//               context: context,
//               builder: (BuildContext context) {
//                 return SimpleDialog(
//                   title: const Text('Select assignment'),
//                   children: <Widget>[
//                     SimpleDialogOption(
//                       onPressed: () {
//                         Navigator.pop(context, Department.treasury);
//                       },
//                       child: const Text('Treasury department'),
//                     ),
//                     SimpleDialogOption(
//                       onPressed: () {
//                         Navigator.pop(context, Department.state);
//                       },
//                       child: const Text('State department'),
//                     ),
//                   ],
//                 );
//               })) {
//             case DepartmentType.sales:
//               // Let's go.
//               // ...
//               break;
//             case DepartmentType.manufacturing:
//               // ...
//               break;
//             case DepartmentType.engineering:
//               // dialog dismissed
//               break;
//             default:
//               break;
//           }
//         });
//   }
// }
