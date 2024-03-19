import 'package:flutter/material.dart';

import 'sports.dart';

class WorkoutsScreen extends StatelessWidget {
  @override
  /* Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workouts'),
      ),
      body: ListView.builder(
        itemCount: 10, // Example: replace with actual workout count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Workout ${index + 1}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SportsCategoriesPage()),
              );
            },
          );
        },
      ),
    );*/

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Navigation Example',
      home: ListViewPage(),
      routes: {
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
    );
  }
}

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8b379a),
        title: Text(
          'Workouts',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Cardio 🏃🏿‍♀️'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
          ),
          ListTile(
            title: Text('Yoga 🧘'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
          ),
          ListTile(
            title: Text('Body Weight Workout 🏋🏻‍♀️'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8b379a),
        title: Text(
          'Cardio',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Jumping Jacks'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Cardio_1()),
              );
            },
          ),
          ListTile(
            title: Text('High Knees'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Cardio_2()),
              );
            },
          ),
          ListTile(
            title: Text('Burpees'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Cardio_3()),
              );
            },
          ),
          ListTile(
            title: Text('Mountain Climbers'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Cardio_4()),
              );
            },
          ),
          ListTile(
            title: Text('Jump Rope'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Cardio_5()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8b379a),
        title: Text('Yoga', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Mountain Pose'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Yoga_1()),
              );
            },
          ),
          ListTile(
            title: Text('Downward-Facing Dog'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Yoga_2()),
              );
            },
          ),
          ListTile(
            title: Text('Tree Pose'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Yoga_3()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8b379a),
        title: Text(
          'Body Weight Workout',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Push Up'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Weight_1()),
              );
            },
          ),
          ListTile(
            title: Text('Plank'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Weight_2()),
              );
            },
          ),
          ListTile(
            title: Text('Squat'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exircise_Weight_3()),
              );
            },
          ),
        ],
      ),
    );
  }
}
