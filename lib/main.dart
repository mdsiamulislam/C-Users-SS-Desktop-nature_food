import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nature_food/pages/product.dart';

void main() {
  runApp(const Flutter());
}

class Flutter extends StatelessWidget {
  const Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.lightGreen),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.home),
              label: Text("হোম"),
              style: TextButton.styleFrom(foregroundColor: Colors.black),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.search),
              label: Text("সার্চ"),
              style: TextButton.styleFrom(foregroundColor: Colors.black),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductPage()),
                    );
                  },
                  icon: Icon(Icons.shopping_cart),
                  label: Text('০ আইটেম')),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                color: Colors.lightGreen,
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                height: 120,
                child: Image.network(
                    "https://campaign.thedailystar.net/friendshipday2018/assets/img/pran.png"),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text("আম"),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text('পাটালি গুঁড়'),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text('আমের আচার'),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text("খাটি মধু"),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text('ঘি'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("লগইন"),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("বার্তা"),
              ),
              Divider(
                color: Colors.black12,
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text("কিভাবে কিনবেন"),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text("আমাদের সম্পর্কে"),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("যোগাযোগ"),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text("প্রাইভেসি"),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text("শর্ত সমুহ"),
              ),
              ListTile(
                leading: Icon(Icons.arrow_circle_right_outlined),
                title: Text("ফেরত নীতি"),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  color: Colors.lightGreen,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://frutasbollo.es/wp-content/uploads/2021/12/mango.png",
                        width: 200,
                      ),
                      Text(
                        'গোপালভোগ আম',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'HindSiliguri',
                        ),
                      ),
                      Text(
                        'প্রতি কেজি ১০০/- টাকায় মাত্র',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'HindSiliguri',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('এখনি অর্ডার করুন'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "- জনপ্রিয় ক্যাটাগরি -",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'HindSiliguri',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage()),
                              );
                            },
                            child: Card(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                width: 120,
                                height: 120,
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Image.network(
                                      'https://www.bookmymango.in/wp-content/uploads/2021/04/gir-kesar.png',
                                      height: 60,
                                    ),
                                    SizedBox(height: 8),
                                    Text('আম'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 120,
                              height: 120,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Image.network(
                                      'https://ml7n9d4bzqhs.i.optimole.com/w:auto/h:auto/q:mauto/f:avif/https://moumachi.in/wp-content/uploads/2021/11/moumachi-khajur-gur-patali-.png',
                                      height: 60),
                                  SizedBox(height: 8),
                                  Text('পাটালি গুঁড়')
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 120,
                              height: 120,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Image.network(
                                      'https://qph.cf2.quoracdn.net/main-qimg-6e5f6b76fee5f433a2626349669b9c29',
                                      height: 60),
                                  SizedBox(height: 8),
                                  Text('আমের আচার')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 120,
                              height: 120,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Image.network(
                                    'https://www.jains.com/Tissue/Nursery/images/Forestry%20Plant/Jayaphal-(2)_300x300.png',
                                    height: 60,
                                  ),
                                  SizedBox(height: 8),
                                  Text('আম চারা')
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 120,
                              height: 120,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Image.network(
                                      'https://bblessedpurehoney.com/wp-content/uploads/2018/08/bb_home_1.png',
                                      height: 60),
                                  SizedBox(height: 8),
                                  Text('খাটি মধু')
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 120,
                              height: 120,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Image.network(
                                      'https://www.forestessentialsindia.com/blog/wp-content/uploads/2020/02/Ghee.png',
                                      height: 60),
                                  SizedBox(height: 8),
                                  Text('ঘি')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
