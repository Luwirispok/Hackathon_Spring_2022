import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 20,
          top: 20,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image(image: AssetImage('assets/img_3.jpg')),
                      ),
                      SizedBox(height: 10),
                      Text('«Линия жизни» — партнер Бегового сообщества'),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.bookmark)),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2.0,
                            blurRadius: 1.0)
                      ],
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image(image: AssetImage('assets/first.jpg')),
                      ),
                      Text(
                        'Томский фонд за 15 лет помог 800 семьям с больными детьми',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.bookmark)),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2.0,
                            blurRadius: 1.0)
                      ],
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image(image: AssetImage('assets/img_4.jpg')),
                      ),
                      Text(
                        'Премия СМИ «В союзе слова и добра»',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.bookmark)),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2.0,
                            blurRadius: 1.0)
                      ],
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image(image: AssetImage('assets/img_5.jpg')),
                      ),
                      Text(
                        'Благотворительный сбор макулатуры - Проект «Добрая школа»',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.bookmark)),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2.0,
                            blurRadius: 1.0)
                      ],
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ));
  }
}
