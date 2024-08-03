import 'package:flutter/cupertino.dart';

class ImgCard extends StatelessWidget {
  String imgURL;
  ImgCard({super.key,required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 200,
              // color: Color(0xFFF5F5FA)
              child: Image.asset(imgURL),
            ),
    );
  }
}
