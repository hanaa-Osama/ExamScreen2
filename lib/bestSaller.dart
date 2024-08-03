import 'package:flutter/cupertino.dart';

class BestSaller extends StatelessWidget {
  String imgBS;
  String bookTitle;
  String author;
  BestSaller({super.key,required this.imgBS,required this.bookTitle,this.author='Laurie Forest'});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 310,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30))
            ,color: Color(0xFFF5F5FA)
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(imgBS,
                  width: 120,)
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text(bookTitle,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                        Text(author,
                          style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF6A6A8B),),
                        )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
