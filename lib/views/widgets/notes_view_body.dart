import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/note_item.dart';
import 'package:note_app/views/widgets/notes_list_view.dart';


class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key, });
  
 // final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title:'Notes',
            icon: Icons.search,
          ),
         Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

