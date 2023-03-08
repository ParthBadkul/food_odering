import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    Widget burger = Container(
      height: 120,
      width: 130,
      child: Image.asset("images/1.png"),
    );
    Widget fries = Container(
      height: 120,
      child: Image.asset("images/2.png"),
    );

    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 25),
        height: 240,
        // color: Colors.amber,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: index == 0 ? 0 : 10,
                        right: index == items ? 20 : 0),
                    // color: Colors.red,
                    height: 240,
                    width: 200,
                    child: GestureDetector(
                      onTap: () {
                        // TO do Naigator
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                index % 2 == 0 ? "BURGER" : "Fries",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    '₹235',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Container(
                                      width: 50,
                                      height: 50,
                                      child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          color: Colors.white,
                                          child: Icon(Icons.add))),
                                ],
                              )
                            ],
                          ),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.elliptical(15, 15)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: index % 2 == 0 ? 50 : 50,
                      right: index % 2 == 0 ? 50 : 30,
                      child: GestureDetector(
                        onTap: () {},
                        child: index % 2 == 0 ? burger : fries,
                      ))
                ],
              );
            }),
      ),
    );
  }
}
