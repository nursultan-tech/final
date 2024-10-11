import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, top: 70.0, right: 25.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discover',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50.0),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/2787310/pexels-photo-2787310.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildTopChip("healthy", true),
                        buildTopChip("Italian", false),
                        buildTopChip("Mexican", false),
                        buildTopChip("Asian", false),
                        buildTopChip("Chinese", false),
                        buildTopChip("Korean", false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: [
                    buildItems(
                      "USTA",
                      "123 reviews",
                      "https://images.pexels.com/photos/3676531/pexels-photo-3676531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                      4.5,
                    ),
                    buildItems(
                      "Frunze",
                      "123 reviews",
                      "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      4.5,
                    ),
                    buildItems(
                      "Kasap",
                      "123 reviews",
                      "https://images.pexels.com/photos/27363857/pexels-photo-27363857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      4.5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
