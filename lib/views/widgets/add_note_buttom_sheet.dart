import 'package:flutter/material.dart';

import 'package:notes_app/views/widgets/custom_bottom.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey <FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String ? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
             onSaved: (value){
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButtom(
            onTap: (){
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                
              }
              else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
            
              }
            },
          )
          ,
          const SizedBox(
            
            height: 16,
          ),
        ],
      ),
    );
  }
}
