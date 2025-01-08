import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({super.key, required this.product});
  final Map<String, dynamic> product;
  final List color = [
    Colors.amber,
    Colors.indigo,
    Colors.green,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Image.network(
            product['image'],
            height: 250,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['name'],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      product['description'],
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: product['rating'],
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: "⭐",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          RatingBar.builder(
            glowColor: Colors.blueGrey,
            minRating: 1,
            itemBuilder: (context, index) {
              return Icon(
                Icons.star,
                color: Colors.amber,
                size: 50,
              );
            },
            unratedColor: Colors.grey,
            onRatingUpdate: (value) {},
          ),

          //chose color
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text(
                "Color ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: Colors.indigo,
                ),
              ),
              //buttons

              SizedBox(
                width: 225,
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color[index],
                        ),
                      ),
                    ),
                  ),
                  itemCount: color.length,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Quantity",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.indigoAccent,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '1',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                ),
              )
            ],
          ),
          SizedBox(
            height: 105,
          ),

          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 250,
              color: Colors.indigo,
              child: Center(
                child: Text(
                  "Confirm Purchase",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
