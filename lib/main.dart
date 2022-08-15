import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dinazorlar ve Sesleri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.home),
          title: const Center(child: Text('Dinazorlar ve Sesleri'))),
      body: Column(
        children: [
          Expanded(flex: 2, child: _HomePageTitle()),
          Expanded(flex: 4, child: _HomePageImg()),
          Expanded(
              flex: 1,
              child:
                  ElevatedButton(onPressed: () => {}, child: Text("Devam et")))
        ],
      ),
    );
  }
}

class _HomePageImg extends StatelessWidget {
  _HomePageImg({
    Key? key,
  }) : super(key: key);
  final src = "https://picsum.photos/300/300";
  @override
  Widget build(BuildContext context) {
    return Image.network(
      src,
      alignment: Alignment.topCenter,
    );
  }
}

class _HomePageTitle extends StatelessWidget {
  const _HomePageTitle({
    Key? key,
  }) : super(key: key);
  final title = "Dinazorları Tanıyalım";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5)
            ]),
        child: Center(
          child: Text(title,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
