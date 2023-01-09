
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';



part 'add_note_state.dart';
class AddNotesCubit extends Cubit<AddNotesState>
{
  AddNotesCubit():super(AddNotesInitial());
  Color color=const Color(0xFF04ECF0);

  addNote(NoteModel note)async
  {
    note.color=color.value;
    emit(AddNotesLoading());
    try {
  var notesBox=Hive.box<NoteModel>(kNotesBox);
  
  await notesBox.add(note);
  emit(AddNotesSucess());
}  catch (e) {
  emit(AddNotesFailure(e.toString()));
}

  }
}