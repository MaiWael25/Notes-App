import 'package:flutter/material.dart';

import 'custom_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon,  this.onPressed});
  final String title;
  final IconData icon ;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
         Text(title,style: const TextStyle(fontSize:28 , color: Colors.white,decoration: TextDecoration.none),),
         const Spacer(),
         CustomIcon(
          onPressed: onPressed,
          icon: icon,
         ),

      ],
    );
  }
}