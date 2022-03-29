import 'package:flutter_dialog_sample/presentation/pages/widgets/dropdown_dialog_button_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'dialog_sample_state.dart';

final dialogSampleStateProvider =
    StateNotifierProvider.autoDispose<DialogSampleNotifier, DialogSampleState>(
  (ref) => DialogSampleNotifier(),
);

class DialogSampleNotifier extends StateNotifier<DialogSampleState> {
  DialogSampleNotifier() : super(DialogSampleState());

  void read() {}

  void save({
    DropdownItemType? itemType,
    String? name,
    String? number,
  }) {
    if (itemType != null) {
      state = state.copyWith(itemType: itemType);
    }
    if (name != null) {
      state = state.copyWith(name: name);
    }
    if (number != null) {
      state = state.copyWith(number: number);
    }
  }
}
