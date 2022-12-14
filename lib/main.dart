import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Icon _corazon = Icon(Icons.favorite_border, color: Colors.white);
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: (){_likedChange();},
            icon: _corazon
          )
        ]
      ),
      //floatingActionButton: FloatingActionButton.extended(
      floatingActionButton: FloatingActionButton(
        onPressed: (){_likedChange();},
        backgroundColor: Colors.red,
        child: _corazon
        //icon: _corazon,
        //label: Text('Like')
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.camera_enhance, color: Colors.white)),
              IconButton(onPressed: null, icon: Icon(Icons.arrow_back, color: Colors.white))
            ]
          )
        )
      )
    );
  }

  void _likedChange() {
    setState(() {
        if(_liked) {
          _corazon = Icon(Icons.favorite_border, color: Colors.white);
          _liked = false;
        } else {
          _corazon = Icon(Icons.favorite, color: Colors.white);
          _liked = true;
        }
      }
    );
  }
}
