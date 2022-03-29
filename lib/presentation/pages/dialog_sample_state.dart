import 'package:flutter_dialog_sample/presentation/pages/widgets/dropdown_dialog_button_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dialog_sample_state.freezed.dart';
// part 'dialog_sample_state.g.dart';

@freezed
class DialogSampleState with _$DialogSampleState {
  factory DialogSampleState({
    @Default(CityType.tokyo) CityType cityType,
    @Default('') String name,
    @Default('') String number,
  }) = _DialogSampleState;

  // factory DialogSampleState.fromJson(Map<String, dynamic> json) =>
  //     _$DialogSampleStateFromJson(json);
}
