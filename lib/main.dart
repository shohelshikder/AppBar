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
      title: 'App Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'App Bar'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                      'Search',
                    style: TextStyle(fontSize: 18),
                  ),
                  backgroundColor: Colors.cyan,
                  duration: Duration(seconds: 2),
                ));
              },
              icon: Icon(
                Icons.search_rounded
              )
          ),
          IconButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    'My Profile',
                    style: TextStyle(fontSize: 18),
                  ),
                  backgroundColor: Colors.cyan,
                  duration: Duration(seconds: 2),
                ));
              },
              icon: Icon(
                Icons.person
              )
          ),
          IconButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    'More..',
                    style: TextStyle(fontSize: 18),
                  ),
                  backgroundColor: Colors.cyan,
                  duration: Duration(seconds: 2),
                ));
              },
              icon: Icon(
                Icons.more_vert
              )
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
