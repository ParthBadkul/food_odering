import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.tealAccent),
          appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
          bottomAppBarColor: Colors.teal),
      home: _Hamberger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _Hamberger extends StatefulWidget {
  @override
  State<_Hamberger> createState() => __HambergerState();
}

class __HambergerState extends State<_Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Deliver me"),
            // centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
          Header(),
          Categories(),
          SliverList(
              delegate: SliverChildListDelegate([
            Text(
              "data",
              style: TextStyle(fontSize: 300),
            ),
          ]))
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(35),
        ),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(Icons.add_alert_outlined)),
                Spacer(),
                Spacer(),
                IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(Icons.turned_in_not)),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
