import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class TextFieldDialog extends StatefulWidget {
//   const TextFieldDialog({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<TextFieldDialog> createState() => _TextFieldDialogState();
// }

// class _TextFieldDialogState extends State<TextFieldDialog> {
//   final nameController = TextEditingController();
//   final numberController = TextEditingController();

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Error', style: TextStyle(color: Colors.red)),
//       content: Form(
//         key: scaffoldKey,
//         child: Column(
//           children: [
//             TextFormField(
//               controller: nameController,
//               maxLength: 10,
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               keyboardType: TextInputType.text,
//               textInputAction: TextInputAction.next,
//               decoration: const InputDecoration(
//                 labelText: '名前',
//                 errorMaxLines: 2,
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return '';
//                 }
//                 if (value.length > 10) {
//                   return '';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: numberController,
//               maxLength: 10,
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               keyboardType: TextInputType.number,
//               textInputAction: TextInputAction.next,
//               decoration: const InputDecoration(
//                 labelText: '番号',
//                 errorMaxLines: 2,
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return '';
//                 }
//                 if (value.length > 10) {
//                   return '';
//                 }
//                 return null;
//               },
//             ),
//           ],
//         ),
//       ),
//       actions: [
//         ElevatedButton(
//           child: const Text('Cancel', style: TextStyle(color: Colors.white)),
//           // color: Colors.red,
//           onPressed: () {
//             Navigator.of(context).pop();
//             // onConfirm?.call();
//           },
//         ),
//         ElevatedButton(
//           child: const Text('OK', style: TextStyle(color: Colors.white)),
//           // color: Colors.red,
//           onPressed: () {
//             Navigator.of(context).pop();
//             // onConfirm?.call();
//           },
//         ),
//       ],
//     );
//   }

//   void show() {
//     showDialog<void>(
//       context: context,
//       builder: build,
//     );
//   }
// }

class TextFieldDialog extends HookConsumerWidget {
  const TextFieldDialog({
    Key? key,
    required BuildContext context,
  })  : _context = context,
        super(key: key);

  final BuildContext _context;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const key = GlobalObjectKey<FormState>('FORM_KEY');
    final nameController = useTextEditingController();
    final numberController = useTextEditingController();

    return AlertDialog(
      title: const Text('テキストフィールドダイアログ'),
      content: Form(
        key: key,
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
                  return '';
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
                  return '';
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
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
            // onConfirm?.call();
          },
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
            // onConfirm?.call();
          },
        ),
      ],
    );
  }

  // void show() {
  //   showDialog<void>(
  //     context: _context,
  //     builder: build,
  //   );
  // }
}

// class CustomHookDialog extends HookConsumerWidget {
//   void show() {
//     showDialog<void>(
//       context: _context,
//       builder: build,
//     );
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     const key = GlobalObjectKey<FormState>('FORM_KEY');
//     final nameController = useTextEditingController();
//     final numberController = useTextEditingController();

//     return XXXDialog(
//       context: context,
//     );
//   }
// }

// class XXXDialog extends StatelessWidget {
//   const XXXDialog({Key? key, required this.context}) : super(key: key);

//   final BuildContext context;

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Error', style: TextStyle(color: Colors.red)),
//       content: const Text('display contentes'),
//       actions: <Widget>[
//         ElevatedButton(
//           child: const Text('OK', style: TextStyle(color: Colors.white)),
//           onPressed: () {
//             Navigator.of(context).pop();
//             // onConfirm?.call();
//           },
//         ),
//       ],
//     );
//   }

//   void show() {
//     showDialog<void>(
//       context: context,
//       builder: build,
//     );
//   }
// }

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
    required BuildContext context,
    required this.message,
    this.onConfirm,
  })  : _context = context,
        super(key: key);

  final BuildContext _context;
  final String message;
  final VoidCallback? onConfirm;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Error', style: TextStyle(color: Colors.red)),
      content: Text(message),
      actions: <Widget>[
        ElevatedButton(
          child: const Text('OK', style: TextStyle(color: Colors.white)),
          // color: Colors.red,
          onPressed: () {
            Navigator.of(context).pop();
            onConfirm?.call();
          },
        ),
      ],
    );
  }

  void show() {
    showDialog<void>(
      context: _context,
      builder: build,
    );
  }
}
