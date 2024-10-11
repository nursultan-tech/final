import 'package:flutter/material.dart';

buildTopChip(
    String label,
    bool isActive,
    ) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Chip(
      padding: const EdgeInsets.all(15),
      label: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 16.0),
      ),
      backgroundColor: isActive ? Colors.orange : Colors.grey,
    ),
  );
}

Container buildItems(String title, String subTitle, String url, double rating) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12.0),
    // padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              image:
              DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            boxShadow: [
              BoxShadow(blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey),
            ],
          ),
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  rating.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
