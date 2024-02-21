import 'package:flutter/material.dart';
import 'package:hermonia_app/pages/videos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'הרמוניה',
      /*
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        shadowColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),*/
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'הרמוניה',
          style: TextStyle(
            color: Colors.white, // Change this color to your desired color
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildRow(context, ['Videos', 'Page 2', 'Page 3', 'Page 4']),
              SizedBox(height: 10),
              _buildRow(context, ['Page 5', 'Page 6', 'Page 7', 'Page 8']),
              SizedBox(height: 10),
              _buildRow(context, ['Page 9', 'Page 10', 'Page 11', 'Page 12']),
              SizedBox(height: 10),
              _buildRow(context, ['Page 13', 'Page 14', 'Page 15', 'Page 16']),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow(BuildContext context, List<String> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        for (var item in items)
          Column(
            children: [
              _buildContainer(context, item),
              SizedBox(height: 10),
            ],
          ),
      ],
    );
  }

  Widget _buildContainer(BuildContext context, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VideoPlayerScreen()),
        );
      },
      child: Container(
        width: 80,
        height: 80,
        color: Colors.deepPurple.shade400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.movie_filter_sharp,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empty Page'),
      ),
      body: Center(
        child: Text('This is an empty page.'),
      ),
    );
  }
}
