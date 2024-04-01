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

/*class ListViewPage extends StatelessWidget {
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
}*/

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
          ListTile(
            title: Text('Seated Forward Bend'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SeatedForwardBendYoga()),
              );
            },
          ),
          ListTile(
            title: Text('Cobra Pose'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CobraPoseYoga()),
              );
            },
          ),
          ListTile(
            title: Text('Warrior I'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WarriorOneYoga()),
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
          ListTile(
            title: Text('Lunges'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LungsBodyweight()),
              );
            },
          ),
          ListTile(
            title: Text('Plank Jacks'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlankJacks()),
              );
            },
          ),
          ListTile(
            title: Text('Tricep Dips'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TricepsDips()),
              );
            },
          ),
          ListTile(
            title: Text('Crunches'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Crunches()),
              );
            },
          ),
          ListTile(
            title: Text('Leg Raises'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LegRaises()),
              );
            },
          ),
        ],
      ),
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
          ListTile(
            title: Text('Pilates 🤸🏼‍♀️'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page4()),
              );
            },
          ),
          ListTile(
            title: Text('Karate 🥋'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page5()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8b379a),
        title: Text(
          'Pilates',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('The Hundred'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HundredPilates()),
              );
            },
          ),
          ListTile(
            title: Text('Roll-Up'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RollUpPilates()),
              );
            },
          ),
          ListTile(
            title: Text('Single Leg Stretch'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SingleLegStretch()),
              );
            },
          ),
          ListTile(
            title: Text('Double Leg Stretch'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DoubleLegStretchPilates()),
              );
            },
          ),
          ListTile(
            title: Text('Bridge'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BridgePilates()),
              );
            },
          ),
          ListTile(
            title: Text('Swan Dive'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SwanDivePilates()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8b379a),
        title: Text(
          'Karate',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Front Punch '),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FrontPunchKarate()),
              );
            },
          ),
          ListTile(
            title: Text('Roundhouse Kick'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RoundhouseKickKarate()),
              );
            },
          ),
          ListTile(
            title: Text('Side Kick'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SideKickKarate()),
              );
            },
          ),
          ListTile(
            title: Text('Front Kick '),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FrontKickKarate()),
              );
            },
          ),
          ListTile(
            title: Text('Low Block'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LowBlockKarate()),
              );
            },
          ),
        ],
      ),
    );
  }
}
