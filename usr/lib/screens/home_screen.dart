import 'package:flutter/material.dart';
import '../models/commodity_model.dart';
import './commodity_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Commodity> _commodities = [
    Commodity(name: "Cocoa", price: 2.50, imagePath: "assets/images/cocoa.jpg"),
    Commodity(name: "Coffee", price: 3.00, imagePath: "assets/images/coffee.jpg"),
    Commodity(name: "Copra", price: 1.80, imagePath: "assets/images/copra.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agri Tus"),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: _commodities.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CommodityDetailScreen(commodity: _commodities[i]),
              ),
            );
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Icon(Icons.agriculture, size: 40, color: Colors.brown),
                const SizedBox(height: 10),
                Text(
                  _commodities[i].name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
