import 'package:flutter/material.dart';

import 'package:bakeryapp/detailsPage.dart';

import 'package:bakeryapp/stack_page.dart';

import 'package:bakeryapp/models/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: const Home(),
    );
  }
}

// home class - stateless widget
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.place,
        ),
      ),
      appBar: AppBar(
        title: const Text('Sweet Nothings'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 241, 124, 196),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/bakery_macaroon.png'),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Cakes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Brownies",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Cookies",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Macaroons",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Other Bestsellers",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Tilt Prism',
                ),
              ),
            ),
            GridView.builder(
              /// By setting [shrinkWrap] true,
              /// we tell gridview to just occupy minimum possible space
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: datalist.length,

              /// [gridDelegate] defines how you can lay down your children
              /// on main and cross axis
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  /// This is used when we have to capture any user interaction
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          sweet: datalist[index],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      color: Color.fromARGB(255, 241, 124, 196),
                      child: Column(
                        children: [
                          Hero(
                            tag: datalist[index].dessertName, // Cheese Cake
                            child: Image.network(
                              datalist[index].dessertImage,
                              // datalist[0].dessertImage
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              datalist[index].dessertName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
