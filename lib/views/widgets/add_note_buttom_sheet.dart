import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/constants.dart';
import 'package:notes_app/views/widgets/custom_bottom.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';



class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(height: 16,),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(height: 50,),
            CustomButtom(),
            SizedBox(height:16 ,),
          ],
        ),
      ),
    );
  }
}
