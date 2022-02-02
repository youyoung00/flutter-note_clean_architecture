import 'package:note_clean_architecture/domain/model/note.dart';
import 'package:note_clean_architecture/domain/repository/note_repository.dart';

class GetNote {
  final NoteRepository repository;

  GetNote(this.repository);

  Future<Note?> call(int id) async {
    return await repository.getNoteById(id);
  }
}
