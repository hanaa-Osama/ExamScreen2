import 'package:flutter/cupertino.dart';

class CategoriesCards extends StatelessWidget {
  String category;
  CategoriesCards({super.key , required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30))
        ,color: Color(0xFFF5F5FA)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(category,
          style: TextStyle(
            fontSize: 20
          ),),
        ),

      ),
    );
  }
}
