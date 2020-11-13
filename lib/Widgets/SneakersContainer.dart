import 'package:flutter/material.dart';
import 'package:sneakersapp/Models/Sneaker.dart';
import 'package:sneakersapp/Screens/SneakerScreen.dart';

class SneakerContainer extends StatefulWidget {
  final Sneaker sneaker;

  const SneakerContainer({Key key, this.sneaker}) : super(key: key);
  @override
  _SneakerContainerState createState() => _SneakerContainerState();
}

class _SneakerContainerState extends State<SneakerContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SneakerScreen(
                  sneaker: widget.sneaker,
                ),
              ));
        },
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 20),
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Color(0xfff6f6f6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    widget.sneaker.image,
                    width: MediaQuery.of(context).size.width - 150,
                    height: 150,
                  ),
                  Text(
                    widget.sneaker.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.sneaker.price,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.star_border),
              ),
            ],
          ),
        ));
  }
}
