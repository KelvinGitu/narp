import 'package:delivery_app/models/home_page_tile_model.dart';
import 'package:delivery_app/views/widgets/home_page_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NARP Delivery",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Explore various services on NARP",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: homeData.length,
                itemBuilder: (context, index) => HomePageCard(tile: homeData[index],),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Account",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text('Action', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white,),),
      ),
    );
  }
}

