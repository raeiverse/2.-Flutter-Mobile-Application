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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ARKNIGHTS PEDIA'),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.mail))
          ],
        ),
        body: SafeArea(
          child: Container(
            //color: Colors.amber,
            margin: EdgeInsets.only(
              left: 55.00,
              right: 55.00,
            ),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/bagpipe.jpg'),
                  height: 200,
                  width: 300,
                ),
                Text('BAGPIPE'),
                Text(
                    'Bagpipe is a spirited young woman from Victoria. Known to other Operators as the outgoing next-door neighbor who cant help but to care'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
