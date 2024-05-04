import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: const Center(child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
    );
  }
}