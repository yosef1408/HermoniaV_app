import 'package:flutter/material.dart';

/*class SportsCategoriesPage extends StatelessWidget {
  final List<String> sportsCategories = [
    'Football',
    'Basketball',
    'Tennis',
    'Swimming',
    'Running',
    'Cycling',
    // Add more sports categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports Categories'),
      ),
      body: ListView.builder(
        itemCount: sportsCategories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(sportsCategories[index]),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/sportsList',
                arguments: sportsCategories[index],
              );
            },
          );
        },
      ),
    );
  }
}
*/
/*class SportsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!ModalRoute.of(context).settings) {
      final String category =
          ModalRoute.of(context).settings.arguments as String;
    }

    // Dummy list of sports for each category
    final List<String> sportsList = category == 'Football'
        ? ['Soccer', 'American Football', 'Rugby']
        : category == 'Basketball'
            ? ['NBA', 'Streetball', '3x3 Basketball']
            : category == 'Tennis'
                ? ['Singles', 'Doubles', 'Table Tennis']
                : category == 'Swimming'
                    ? ['Freestyle', 'Breaststroke', 'Butterfly']
                    : category == 'Running'
                        ? ['Sprint', 'Long Distance', 'Hurdles']
                        : category == 'Cycling'
                            ? [
                                'Road Cycling',
                                'Mountain Biking',
                                'Track Cycling'
                              ]
                            : [];

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Sports'),
      ),
      body: ListView.builder(
        itemCount: sportsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(sportsList[index]),
            // You can add onTap functionality here if needed
          );
        },
      ),
    );
  }
}
*/

import 'video_player.dart';

/*CARDIO*/
import 'package:flutter/material.dart';

class Exircise_Cardio_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Jumping Jacks Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*Text(
              'Jumping Jacks Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),*/
            SizedBox(height: 16.0),
            Text(
              'How to do Jumping Jacks:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Stand upright with your legs together and your arms at your sides.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '2. Jump up while simultaneously raising your arms above your head and spreading your legs out to the sides.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '3. Land softly with your feet shoulder-width apart and your arms back at your sides.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Cardio_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'High Knees Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*Text(
              'High Knees Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),*/
            SizedBox(height: 10.0),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Stand in place and jog on the spot, lifting your knees as high as possible with each step. Maintain a fast pace to elevate your heart rate and engage your core muscles.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_highknee(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Cardio_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Burpees Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*Text(
              'Burpees Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),*/
            SizedBox(height: 5.0),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '1. Begin in a standing position. Drop into a squat position with your hands on the ground.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '2. Kick your feet back into a plank position, perform a push-up, then immediately return your feet to the squat position.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '3. From the squat position, jump up as high as possible before returning to the starting position.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_burpees(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Cardio_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Mountain Climber Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Text(
              'Mountain Climber Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),*/
            SizedBox(height: 10.0),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '1. Start in a plank position with your hands directly under your shoulders.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '2. Keep your core engaged and your body in a straight line from head to heels.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '3. Alternate bringing your knees toward your chest one at a time in a running motion.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '4. Move as quickly as possible while maintaining good form.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_climb(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Cardio_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('אימון 2'),
      ),
      body: Center(
        child: VideoPlayerPage(),
      ),
    );
  }
}

class Exircise_Cardio_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Jump Rope Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*Text(
              'Jump Rope Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),*/
            SizedBox(height: 10.0),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              'How to do the Jump Rope exercise:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '1. Hold the "jump rope handles" in each hand.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '2. Stand with your feet together, and the rope behind you.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '3. Swing the rope over your head and jump over it with both feet.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '4. Land on the balls of your feet, keeping your knees slightly bent.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '5. Continue swinging the rope and jumping over it, maintaining a steady rhythm.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_rope(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*YOGA*/

class Exircise_Weight_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Push-up Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Text(
              'Push-up Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),*/
            SizedBox(height: 10.0),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            /*Text(
              'How to do the Push-up exercise:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),*/
            SizedBox(height: 3.0),
            Text(
              '1. Start in a plank position with your hands shoulder-width apart and your palms flat on the floor.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '2. Keep your body in a straight line from head to heels, engage your core muscles, and lower your body towards the floor by bending your elbows.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '3. Lower yourself until your chest nearly touches the floor.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '4. Push yourself back up to the starting position by straightening your arms.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '5. Repeat for the desired number of repetitions.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_push(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Weight_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Plank Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            /*Text(
              'How to do the Plank exercise:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),*/
            SizedBox(height: 5.0),
            Text(
              '1. Start by getting into a push-up position with your elbows bent and your weight resting on your forearms.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '2. Your body should form a straight line from your head to your heels, with your core muscles engaged and your back flat.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '3. Hold this position for the desired amount of time, making sure to keep your hips level and not allowing them to sag or rise too high.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '4. Breathe deeply and evenly throughout the exercise, focusing on maintaining proper form and engaging your core muscles.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_plank(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Weight_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Squat Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Text(
              'Squat Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),*/
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox(height: 5.0),
            /*Text(
              'How to do the Squat exercise:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),*/
            SizedBox(height: 2.0),
            Text(
              '1. Stand with your feet shoulder-width apart, toes pointing slightly outward.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              '2. Lower your body by bending your knees and pushing your hips back as if you were sitting down into a chair. Keep your chest up and your weight on your heels.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '3. Continue lowering yourself until your thighs are parallel to the ground, or as far down as comfortable while maintaining proper form.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '4. Push through your heels to return to the starting position, squeezing your glutes at the top of the movement, Repeat for the desired number of repetitions.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),

            SizedBox(height: 3.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_squat(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Yoga_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Tree Pose Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Text(
              'Tree Pose Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),*/
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            /* Text(
              'Tree Pose is a yoga pose that helps improve balance, focus, and concentration. It also strengthens the legs, ankles, and core muscles. This pose encourages you to find stability and gracefulness, like a tree swaying gently in the wind.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),*/
            /* Text(
              'How to do the Tree Pose exercise:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),*/
            Text(
              '1. Begin standing tall with your feet together and arms at your sides.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '2. Shift your weight onto your left foot, grounding it firmly into the floor.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '3. Bend your right knee and place the sole of your right foot on the inside of your left thigh, either above or below the knee.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '4. Bring your hands together in front of your chest in a prayer position, or extend them overhead with your palms facing each other.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '5. Find a focal point to gaze at to help with balance, and hold the pose for 30 seconds to 1 minute, breathing deeply and evenly.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_tree(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Yoga_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Downward-Facing Dog',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Text(
              'Downward-Facing Dog Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),*/
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            /* Text(
              'Downward-Facing Dog is a yoga pose that stretches and strengthens the entire body. It helps to lengthen the spine, stretch the shoulders, hamstrings, and calves, and improve overall flexibility and strength.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),*/
            /*Text(
              'How to do the Downward-Facing Dog exercise:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),*/
            Text(
              '1. Start on your hands and knees, with your wrists under your shoulders and your knees under your hips.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '2. Exhale as you lift your hips towards the ceiling, straightening your arms and legs to form an inverted V shape.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '3. Press your hands into the ground and keep your fingers spread wide. Your heels should be pressing towards the floor, but it\'s okay if they don\'t touch.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '4. Engage your core muscles and lengthen your spine, allowing your head to hang freely between your arms.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_downward(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Yoga_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Mountain Pose Exercise',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*Text(
              'Mountain Pose Exercise',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),*/
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            /* Text(
              'How to do the Mountain Pose exercise:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),*/
            Text(
              '1.Stand tall with your feet together, arms at your sides, and palms facing forward.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '2.Ground your feet firmly into the ground, distributing your weight evenly between both feet, and engage your thigh muscles.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '3.Lengthen your spine by drawing your belly button in toward your spine and lifting your chest. Roll your shoulders back and down.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '4.Extend your arms alongside your body with your palms facing forward, fingers gently spread apart, and relax your shoulders.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              '5.Hold the pose for 45, focusing on your breath and maintaining good posture.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 3.0),
            Text(
              'Video Demonstration:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.0),
            AspectRatio(
              aspectRatio: 16 / 9, // Aspect ratio of the video
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: VideoPlayerPage_mopose(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Exircise_Weight_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('אימון 1'),
      ),
      body: Center(
        child: Text('Page 1 Content'),
      ),
    );
  }
}
