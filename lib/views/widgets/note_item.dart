import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(color: const Color(0xffFFCC80),borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter Tips',style: TextStyle(color: Colors.black,fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text('Build your carrer with tahrwat samy',style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18)),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,size: 25,)),
    
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('21 May , 2022',style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16),),
            )
        
            
          ],
        ),
      ),
    );
  }
}