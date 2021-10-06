import 'package:app_demo/button.dart';
import 'package:flutter/material.dart';

import 'item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("images/logo.png"),
          ),
        ),
        title: Container(
          height: 38.0,
          width: 500.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.grey[50],
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Icon(
                  Icons.search_outlined,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Tìm kiếm sản phẩm',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.grey,
              ),
              splashColor: Colors.transparent,
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
              ),
              splashColor: Colors.transparent,
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 19,
            ),
            Row(
              children: [
                Flexible(
                  flex: 10,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 500,
                    child: ExpansionTile(
                      title: Text('Tất cả'),
                      children: [
                        Text('test1'),
                        Text('test2'),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                      primary: Colors.grey[200],
                      padding: EdgeInsets.all(20),
                    ),
                    child: Icon(
                      Icons.favorite_outlined,
                      color: Colors.grey[700],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button('Tất cả'),
                Button('Yến sào'),
                Button('Sâm Hàn Quốc'),
                Button('Collagen'),
              ],
            ),
            SizedBox(height: 50),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemButton('Đây là sản phẩm 1', 200),
                    ItemButton('Đây là sản phẩm 2', 300),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemButton('Đây là sản phẩm 3', 200),
                    ItemButton('Đây là sản phẩm 4', 300),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemButton('Đây là sản phẩm 5', 200),
                    ItemButton('Đây là sản phẩm 6', 300),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Các hạn mục khác:',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Button('Dành cho gia đình'),
                      SizedBox(width: 10),
                      Button('Dành cho người cao tuổi'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Button('Dành cho vị thành niên'),
                      SizedBox(width: 10),
                      Button('Dành cho bố mẹ'),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
