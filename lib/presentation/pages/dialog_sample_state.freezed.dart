// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dialog_sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DialogSampleStateTearOff {
  const _$DialogSampleStateTearOff();

  _DialogSampleState call(
      {DropdownItemType itemType = DropdownItemType.item1,
      String name = '',
      String number = ''}) {
    return _DialogSampleState(
      itemType: itemType,
      name: name,
      number: number,
    );
  }
}

/// @nodoc
const $DialogSampleState = _$DialogSampleStateTearOff();

/// @nodoc
mixin _$DialogSampleState {
  DropdownItemType get itemType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DialogSampleStateCopyWith<DialogSampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogSampleStateCopyWith<$Res> {
  factory $DialogSampleStateCopyWith(
          DialogSampleState value, $Res Function(DialogSampleState) then) =
      _$DialogSampleStateCopyWithImpl<$Res>;
  $Res call({DropdownItemType itemType, String name, String number});
}

/// @nodoc
class _$DialogSampleStateCopyWithImpl<$Res>
    implements $DialogSampleStateCopyWith<$Res> {
  _$DialogSampleStateCopyWithImpl(this._value, this._then);

  final DialogSampleState _value;
  // ignore: unused_field
  final $Res Function(DialogSampleState) _then;

  @override
  $Res call({
    Object? itemType = freezed,
    Object? name = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as DropdownItemType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DialogSampleStateCopyWith<$Res>
    implements $DialogSampleStateCopyWith<$Res> {
  factory _$DialogSampleStateCopyWith(
          _DialogSampleState value, $Res Function(_DialogSampleState) then) =
      __$DialogSampleStateCopyWithImpl<$Res>;
  @override
  $Res call({DropdownItemType itemType, String name, String number});
}

/// @nodoc
class __$DialogSampleStateCopyWithImpl<$Res>
    extends _$DialogSampleStateCopyWithImpl<$Res>
    implements _$DialogSampleStateCopyWith<$Res> {
  __$DialogSampleStateCopyWithImpl(
      _DialogSampleState _value, $Res Function(_DialogSampleState) _then)
      : super(_value, (v) => _then(v as _DialogSampleState));

  @override
  _DialogSampleState get _value => super._value as _DialogSampleState;

  @override
  $Res call({
    Object? itemType = freezed,
    Object? name = freezed,
    Object? number = freezed,
  }) {
    return _then(_DialogSampleState(
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as DropdownItemType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DialogSampleState implements _DialogSampleState {
  _$_DialogSampleState(
      {this.itemType = DropdownItemType.item1,
      this.name = '',
      this.number = ''});

  @JsonKey()
  @override
  final DropdownItemType itemType;
  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String number;

  @override
  String toString() {
    return 'DialogSampleState(itemType: $itemType, name: $name, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DialogSampleState &&
            const DeepCollectionEquality().equals(other.itemType, itemType) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemType),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$DialogSampleStateCopyWith<_DialogSampleState> get copyWith =>
      __$DialogSampleStateCopyWithImpl<_DialogSampleState>(this, _$identity);
}

abstract class _DialogSampleState implements DialogSampleState {
  factory _DialogSampleState(
      {DropdownItemType itemType,
      String name,
      String number}) = _$_DialogSampleState;

  @override
  DropdownItemType get itemType;
  @override
  String get name;
  @override
  String get number;
  @override
  @JsonKey(ignore: true)
  _$DialogSampleStateCopyWith<_DialogSampleState> get copyWith =>
      throw _privateConstructorUsedError;
}
