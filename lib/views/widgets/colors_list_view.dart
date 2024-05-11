import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive ;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      backgroundColor: Colors.white,
      radius: 38,
      child:  CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    )  :  CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors =
  [
    Color(0xffCDB4DB),
    Color(0xffFFC8DD),
    Color(0xffFFAFCC),
    Color(0xffBDE0FE),
    Color(0xffA2D2FF),

  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index)
      {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector
          (
            onTap: (){
              currentIndex = index;
              setState(() {
                
              });
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex==index,
            ),
          ),
        );
      }),
    );
  }
}
