import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

@immutable
abstract class NotesState {}

class NotesIntial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;
  NotesSuccess(this.notes);
}

class NotesFailure extends NotesState {
  final String errorMessage;
  NotesFailure(this.errorMessage);
}
