import 'package:note_clean_architecture/data/data_source/note_db_helper.dart';
import 'package:note_clean_architecture/data/repository/note_repository_impl.dart';
import 'package:note_clean_architecture/domain/repository/note_repository.dart';
import 'package:note_clean_architecture/domain/use_case/add_note_use_case.dart';
import 'package:note_clean_architecture/domain/use_case/delete_note_use_case.dart';
import 'package:note_clean_architecture/domain/use_case/get_note_use_case.dart';
import 'package:note_clean_architecture/domain/use_case/get_notes_use_case.dart';
import 'package:note_clean_architecture/domain/use_case/update_note_use_case.dart';
import 'package:note_clean_architecture/domain/use_case/use_casas.dart';
import 'package:note_clean_architecture/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_clean_architecture/presentation/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  Database database = await openDatabase(
    'notes_db',
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE note(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color INTEGER, timestamp INTEGER)');
    },
  );

  NoteDbHelper noteDbHelper = NoteDbHelper(database);
  NoteRepository repository = NoteRepositoryImpl(noteDbHelper);
  UseCases useCases = UseCases(
    addNote: AddNoteUseCase(repository),
    deleteNote: DeleteNoteUseCase(repository),
    getNote: GetNoteUseCase(repository),
    updateNote: UpdateNoteUseCase(repository),
    getNotes: GetNotesUseCase(repository),
  );

  NotesViewModel notesViewModel = NotesViewModel(useCases);
  AddEditNoteViewModel addEditNoteViewModel = AddEditNoteViewModel(repository);

  return [
    ChangeNotifierProvider(create: (_) => notesViewModel),
    ChangeNotifierProvider(create: (_) => addEditNoteViewModel),
  ];
}
