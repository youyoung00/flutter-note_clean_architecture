import 'package:note_clean_architecture/domain/model/note.dart';
import 'package:note_clean_architecture/domain/repository/note_repository.dart';

class UpdateNote {
  final NoteRepository repository;

  UpdateNote(this.repository);

  Future<void> call(Note note) async {
    await repository.updateNote(note);
  }
}
