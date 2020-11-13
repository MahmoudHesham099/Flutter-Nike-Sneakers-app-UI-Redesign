import 'package:flutter/material.dart';
import 'package:sneakersapp/Models/Sneaker.dart';
import 'package:sneakersapp/Widgets/SneakersContainer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 35,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.filter_list,
                      size: 35,
                      color: Colors.black,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shoes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Sort by',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: sneakers.length,
                itemBuilder: (context, index) {
                  Sneaker sneaker = sneakers[index];
                  return SneakerContainer(
                    sneaker: sneaker,
                  );
                })
          ],
        ),
      ),
    );
  }
}
