import 'package:flutter/material.dart';
import 'package:hello_world/Models/Gifts.dart';
import 'package:hello_world/Screens/Aboutgift.dart';
import 'package:hello_world/Screens/Gifts_screen.dart';
import 'package:hello_world/data.dart';

class Giftcard extends StatelessWidget {
  final Gift gift;

  const Giftcard({Key? key, required this.gift}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                      child:
                          Image(image: AssetImage('images/${gift.imageUrl}'))),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${gift.title}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '${gift.about}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '${gift.validFrom}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '${gift.status}',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        color: Colors.black,
      ),
    );
  }
}
