import 'package:flutter/cupertino.dart';
import 'package:note_clean_architecture/domain/model/note.dart';
import 'package:note_clean_architecture/domain/use_case/use_casas.dart';

import 'notes_event.dart';
import 'notes_state.dart';

class NotesViewModel with ChangeNotifier {
  final UseCases useCases;

  NotesState _state = NotesState(notes: []);

  NotesState get state => _state;

  Note? _recentlyDeletedNote;

  NotesViewModel(this.useCases) {
    _loadNotes();
  }

  void onEvent(NotesEvent event) {
    event.when(
      loadNotes: _loadNotes,
      deleteNote: _deleteNote,
      restoreNote: _restoreNote,
    );
  }

  Future<void> _loadNotes() async {
    List<Note> notes = await useCases.getNotes.call();

    _state = state.copyWith(notes: notes);
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await useCases.deleteNote(note);
    _recentlyDeletedNote = note;
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      await useCases.addNote(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      _loadNotes();
    }
  }
}
