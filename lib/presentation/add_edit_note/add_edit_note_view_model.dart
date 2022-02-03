import 'package:flutter/material.dart';
import 'package:note_clean_architecture/domain/model/note.dart';
import 'package:note_clean_architecture/domain/repository/note_repository.dart';
import 'package:note_clean_architecture/presentation/add_edit_note/add_edit_note_event.dart';

class AddEditNoteViewModel with ChangeNotifier {
  final NoteRepository repository;
  int _color = Colors.orange.value;

  int get color => _color;

  AddEditNoteViewModel(this.repository);

  void onEvent(AddEditNoteEvent event) {
    event.when(
      changeColor: _changeColor,
      saveNote: _saveNote,
    );
  }

  Future<void> _changeColor(int color) async {
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(
    int? id,
    String title,
    String content,
  ) async {
    if (id == null) {
      await repository.insertNote(
        Note(
            color: _color,
            title: title,
            content: content,
            timestamp: DateTime.now().millisecondsSinceEpoch),
      );
    } else {
      await repository.updateNote(Note(
          id: id,
          color: _color,
          title: title,
          content: content,
          timestamp: DateTime.now().millisecondsSinceEpoch));
    }
  }
}
