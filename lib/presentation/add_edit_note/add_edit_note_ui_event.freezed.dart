// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_edit_note_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddEditNoteUiEventTearOff {
  const _$AddEditNoteUiEventTearOff();

  SaveNote<T> saveNote<T>() {
    return SaveNote<T>();
  }
}

/// @nodoc
const $AddEditNoteUiEvent = _$AddEditNoteUiEventTearOff();

/// @nodoc
mixin _$AddEditNoteUiEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNote<T> value) saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveNote<T> value)? saveNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNote<T> value)? saveNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditNoteUiEventCopyWith<T, $Res> {
  factory $AddEditNoteUiEventCopyWith(AddEditNoteUiEvent<T> value,
          $Res Function(AddEditNoteUiEvent<T>) then) =
      _$AddEditNoteUiEventCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AddEditNoteUiEventCopyWithImpl<T, $Res>
    implements $AddEditNoteUiEventCopyWith<T, $Res> {
  _$AddEditNoteUiEventCopyWithImpl(this._value, this._then);

  final AddEditNoteUiEvent<T> _value;
  // ignore: unused_field
  final $Res Function(AddEditNoteUiEvent<T>) _then;
}

/// @nodoc
abstract class $SaveNoteCopyWith<T, $Res> {
  factory $SaveNoteCopyWith(
          SaveNote<T> value, $Res Function(SaveNote<T>) then) =
      _$SaveNoteCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SaveNoteCopyWithImpl<T, $Res>
    extends _$AddEditNoteUiEventCopyWithImpl<T, $Res>
    implements $SaveNoteCopyWith<T, $Res> {
  _$SaveNoteCopyWithImpl(SaveNote<T> _value, $Res Function(SaveNote<T>) _then)
      : super(_value, (v) => _then(v as SaveNote<T>));

  @override
  SaveNote<T> get _value => super._value as SaveNote<T>;
}

/// @nodoc

class _$SaveNote<T> implements SaveNote<T> {
  const _$SaveNote();

  @override
  String toString() {
    return 'AddEditNoteUiEvent<$T>.saveNote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SaveNote<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
  }) {
    return saveNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? saveNote,
  }) {
    return saveNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNote<T> value) saveNote,
  }) {
    return saveNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveNote<T> value)? saveNote,
  }) {
    return saveNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNote<T> value)? saveNote,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(this);
    }
    return orElse();
  }
}

abstract class SaveNote<T> implements AddEditNoteUiEvent<T> {
  const factory SaveNote() = _$SaveNote<T>;
}
