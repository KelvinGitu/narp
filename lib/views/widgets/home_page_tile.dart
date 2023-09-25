import 'package:flutter/material.dart';

import '../../models/home_page_tile_model.dart';

class HomePageCard extends StatelessWidget {
  final HomePageTile tile;


  const HomePageCard({
    required this.tile,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Image.asset(tile.image, width: MediaQuery.of(context).size.width * 0.9, height: 250,),
          Text(
            tile.message,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
