import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/note_item.dart';

import '../../models/note_model.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesSates>(
      builder:(context, state) {
        
     List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes??[] ;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          itemCount:notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
          return  Padding(
            padding:const  EdgeInsets.symmetric(vertical: 4),
            child:  NotesItem(
              note: notes[index],
            ),
          );
        }),
      );
       },
    );
  }
}