import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentselectItem = 0;
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(left: index == 0 ? 0 : 5, right: 10),
                      height: 90,
                      width: 90,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currentselectItem = index;
                          });
                        },
                        child: Card(
                          color: index == currentselectItem
                              ? Color.fromARGB(255, 170, 145, 75)
                              : Colors.white,
                          child: Icon(
                            Icons.fastfood,
                            color: index == currentselectItem
                                ? Color.fromARGB(255, 39, 32, 12)
                                : Colors.black.withOpacity(0.7),
                          ),
                          elevation: 3,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    margin:
                        EdgeInsets.only(left: index == 0 ? 0 : 5, right: 10),
                    width: 90,
                    child: Row(
                      children: [
                        Spacer(),
                        Text("Burger"),
                        Spacer(),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
