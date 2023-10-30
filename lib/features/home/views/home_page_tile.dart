// import 'package:delivery_app/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/home_page_tile_model.dart';

class HomePageCard extends ConsumerWidget {
  final HomePageTile tile;

  const HomePageCard({
    required this.tile,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final image = ref
    //     .read(homeControllerProvider)
    //     .getHomeImages(tile.image, context);
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(),
      ),
      child: Column(
        children: [
          Image.asset(
            tile.image,
            width: MediaQuery.of(context).size.width * 0.9,
            height: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            tile.message,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
