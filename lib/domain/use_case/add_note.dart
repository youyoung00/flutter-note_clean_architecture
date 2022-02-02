import 'package:note_clean_architecture/domain/model/note.dart';
import 'package:note_clean_architecture/domain/repository/note_repository.dart';

class AddNote {
  final NoteRepository repository;

  AddNote(this.repository);

  Future<void> call(Note note) async {
    await repository.insertNote(note);
  }
}
