import 'package:exam_screen_two/categoriesCart.dart';
import 'package:exam_screen_two/main.dart';
import 'package:flutter/material.dart';

import 'bestSaller.dart';
import 'imageCard.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Image.asset('assets/Logo Small.png'),
        title: Row(
          children: [
            Text('Audi',
            style: TextStyle(
              color:Color(0xFF4838D1),
              fontSize: 25,
              fontWeight: FontWeight.bold
              )
            ),
            Text('Books',
                style: TextStyle(
                color:Color(0xFF4838D1),
                fontSize: 25,),
            ),
            Text('.',
                style: TextStyle(
                    color:Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                )
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.settings,
              color: Color(0xFF4838D1),)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 30 ,),
              Row(
                children: [
                  Expanded(
                    child: Text('Categories',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold)
                      ,),
                  ),
                  Text('See more ',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF4838D1),
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      CategoriesCards(category: 'Art'),
                      CategoriesCards(category: 'Business'),
                      CategoriesCards(category: 'Comedy'),
                      CategoriesCards(category: 'Drama'),
                    ],
                  ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Text('Recommended For You',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold)
                      ,),
                  ),
                  Text('See more ',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF4838D1),
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ImgCard( imgURL: 'assets/page1.png',),
                      ImgCard( imgURL: 'assets/page2.png'),
                      ImgCard( imgURL: 'assets/page1.png',),
                      ImgCard( imgURL: 'assets/page2.png'),
                    ]
                  )
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Text('Best Saller',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold)
                      ,),
                  ),
                  Text('See more ',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF4838D1),
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        BestSaller(imgBS: 'assets/best.png',
                        bookTitle: 'Moon Light',),
                        BestSaller(imgBS: 'assets/best.png',
                        bookTitle: 'Moon Light',),
                        BestSaller(imgBS: 'assets/best.png',
                          bookTitle: 'Moon Light',),
                        BestSaller(imgBS: 'assets/best.png',
                          bookTitle: 'Moon Light',),
                      ]
                  )
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
      Container(
        height: 84,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.home_filled,
                size: 25,
                color:Color(0xFF4838D1) ,),
                Text('Home',style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF4838D1)
                )
                  ,)
              ],
            ),
            // Spacer(),
            Column(
              children: [
                Icon(Icons.search_sharp,
                color: Color(0xFF6A6A8B),
                  size: 25
                  ,),
                Text('Search',style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4838D1)
                )
                  ,)
              ],
            ),
            // Spacer(),
            Column(
              children: [
                Icon(Icons.my_library_books_outlined,
                    color: Color(0xFF6A6A8B),
                size: 25,),
                Text('Library',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4838D1)
                )
                  ,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
