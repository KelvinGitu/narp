import 'package:delivery_app/features/home/views/home_page_tile.dart';
import 'package:delivery_app/models/home_page_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void navigateToSendPackage(BuildContext context) {
    Routemaster.of(context).push('/send-package');
  }

  void navigateToReceivePackage(BuildContext context) {
    Routemaster.of(context).push('/receive-package');
  }

  void navigateToDisplayMap(BuildContext context) {
    Routemaster.of(context).push('/display-map');
  }


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NARP Delivery",
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to NARP, the best place for a swift delivery',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: homeData.length,
                itemBuilder: (context, index) => HomePageCard(
                  tile: homeData[index],
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              "What would you like help with today?",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              softWrap: true,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () => navigateToDisplayMap(context),
              child: Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call_made_rounded,
                      color: Colors.orange.shade900,
                    ),
                    Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Send Package',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Send a package to anywhere in the country at any time',
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.justify,
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.orange.shade900,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            InkWell(
              onTap: () => navigateToReceivePackage(context),
              child: Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call_received_rounded,
                      color: Colors.orange.shade900,
                    ),
                    Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Receive Package',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Receive a package from anywhere in the country at any time',
                            style: Theme.of(context).textTheme.bodySmall,
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.orange.shade900,
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
