import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

@immutable
abstract class AddNoteState {}

class NotesIntial extends AddNoteState {}

class NotesLoading extends AddNoteState {}

class NotesSuccess extends AddNoteState {
  final List<NoteModel> notes;
  NotesSuccess(this.notes);
}

class NotesFailure extends AddNoteState {
  final String errorMessage;
  NotesFailure(this.errorMessage);
}
