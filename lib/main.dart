import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/widgets/constants.dart';

void main()  async{
  await Hive.initFlutter(); // hive from hive flutter
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins'),
      home: const NoteView(),
    
    );
  }
}
