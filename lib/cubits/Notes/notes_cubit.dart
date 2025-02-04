import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial()) {
    fetchAllNotes();
  }

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    List<NoteModel> notes = notesBox.values.toList();
    emit(NotesSuccess(notes));
  }
}
