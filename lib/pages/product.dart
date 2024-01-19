import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  var list = [
    {"title": "Item 1", "description": "This is the description for item 1."},
    {"title": "Item 2", "description": "This is the description for item 2."},
    {"title": "Item 3", "description": "This is the description for item 3."}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("আম"),
        backgroundColor: Colors.lightGreen,
      ),
      body: GridView.count(
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(list.length, (index) {
          return Center(
            child: Card(
              child: Container(
                  padding: EdgeInsets.all(10),
                  width: 170,
                  height: 250,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          'https://www.forestessentialsindia.com/blog/wp-content/uploads/2020/02/Ghee.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text('ঘি'),
                      Text('&000'),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: OutlinedButton(
                            onPressed: () {}, child: Text('Order Now')),
                      )
                    ],
                  )),
            ),
          );
        }),
      ),
    );
  }
}
