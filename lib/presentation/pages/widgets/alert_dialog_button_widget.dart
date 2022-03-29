import 'package:flutter/material.dart';
import 'package:flutter_dialog_sample/presentation/common_widgets/custom_alert_dialog.dart';

class AlertDialogButtonWidget extends StatelessWidget {
  const AlertDialogButtonWidget({
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

// class AlertDialogButtonWidget extends StatelessWidget {
//   const AlertDialogButtonWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       child: const Text('基本のAlertダイアログボタン'),
//       onPressed: () => showDialog(
//         context: context,
//         builder: (context) => CustomAlertDialog(
//           title: '基本のAlertダイアログ',
//           contentWidget: const Text('This is an alert dialog.'),
//           cancelActionText: 'Cancel',
//           cancelAction: () {},
//           defaultActionText: 'OK',
//           action: () {
//             // TODO: implement method
//           },
//         ),
//       ),
//     );
//   }
// }
