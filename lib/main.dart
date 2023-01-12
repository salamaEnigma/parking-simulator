import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Parking App Simulator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//* ########## PUT YOUR STATES HERE => (DATA)
  int _carCount = 0;

//* ########## PUT YOUR FUNCTIONS HERE => (LOGIC)
  void _incrementCarCounter() {}
  void _decrementCarCounter() {}

//* ########## PUT YOUR DESIGN CODE HERE => (UI)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Cars Park',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),

            // ! Read this code carefully
            // We used 3 main concepts here
            // 1- Expanded widget
            // 2- GridView.count
            // 3- List.filled

            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 4,
                children: List.filled(
                  _carCount,
                  const Car(),
                ).toList(),
              ),
            ),
            // Hint: Here add you action buttons
          ],
        ),
      ),
    );
  }
}

// Car Item Design
class Car extends StatelessWidget {
  const Car({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          border: Border.all(color: Colors.black)),
      child: const Icon(
        Icons.directions_car,
        size: 40,
        color: Colors.red,
      ),
    );
  }
}
