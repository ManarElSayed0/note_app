import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesSates> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes ;
  FetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

     notes = notesBox.values.toList();
    emit(NotesSucess()); 
  }
}
