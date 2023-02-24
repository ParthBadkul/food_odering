import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                      child: Card(
                        child: Icon(
                          Icons.fastfood,
                          color: Colors.black.withOpacity(0.7),
                        ),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  child: Container(
                    margin:
                        EdgeInsets.only(left: index == 0 ? 0 : 5, right: 10),
                    width: 0,
                    child: Row(
                      children: [Text("data")],
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
