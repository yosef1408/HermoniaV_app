/*import 'package:flutter/material.dart';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final FlickManager flickManager = FlickManager(
    videoPlayerController: VideoPlayerController.network(
      '',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: const Text("Flutter Video Player"),
        centerTitle: true,
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlickVideoPlayer(flickManager: flickManager),
        ),
      ),
    );
  }
}
*/

/*import 'package:flutter/material.dart';
import 'youtube_player_custom_subtitles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YoutubePlayerCustomSubtitle(),
    );
  }
}
*/

// ignore_for_file: prefer_const_constructors, prefer_final_fields

/*import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId:
          'Tb9k9_Bo-G4', // https://www.youtube.com/watch?v=Tb9k9_Bo-G4
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
        isLive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Youtube Player"),
          ),
          body: player,
        );
      },
    );
  }
}
*/

/*import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeVideoPlayer extends StatefulWidget {
  final String videoUrl;

  YouTubeVideoPlayer({required this.videoUrl});

  @override
  _YouTubeVideoPlayerState createState() => _YouTubeVideoPlayerState();
}

class _YouTubeVideoPlayerState extends State<YouTubeVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl)!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,
        onReady: () {
          // Add custom logic if needed
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('YouTube Video Player'),
        ),
        body: Center(
          child: YouTubeVideoPlayer(
            videoUrl: 'aB1VEVv2oRc',
          ),
        ),
      ),
    );
  }
}


*/

/*import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LocalVideoPlayer extends StatefulWidget {
  final String videoPath;

  LocalVideoPlayer({required this.videoPath});

  @override
  _LocalVideoPlayerState createState() => _LocalVideoPlayerState();
}

class _LocalVideoPlayerState extends State<LocalVideoPlayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath);
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Local Video Player'),
        ),
        body: Center(
          child: LocalVideoPlayer(
            videoPath: 'assets/my.mp4', // Replace with your video file path
          ),
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
 

 VideoPlayerController _controller;
 Future<void> _initializeVideoPlayerFuture;
 
 @override
 void initState() {
   _controller = VideoPlayerController.network(
       "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
   //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
   _initializeVideoPlayerFuture = _controller.initialize();
   _controller.setLooping(true);
   _controller.setVolume(1.0);
   super.initState();
 }

FutureBuilder(
future: _initializeVideoPlayerFuture,
builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
    return Center(
        child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
        ),
    );
    } else {
    return Center(
        child: CircularProgressIndicator(),
    );
    }
 },
),


class VideoDemo extends StatefulWidget {
  VideoDemo() : super();
 
  final String title = "Video Demo";
 
  @override
  VideoDemoState createState() => VideoDemoState();
}
 
class VideoDemoState extends State<VideoDemo> {
  //
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
 
  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Demo"),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child:
            Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

import 'workout.dart';
import 'Brain_Exercise.dart';
import 'community_page.dart';

void main() {
  runApp(SportsApp());
}

class SportsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports App',
      /* initialRoute: '/',
      routes: {
        '/': (context) => SportsCategoriesPage(),
        '/sportsList': (context) => SportsListPage(),
      },*/
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8b379a),
        title: Text(
          'Sport',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /* Text(
              'Welcome to the Sports App!',
              style: TextStyle(fontSize: 24),
            ),*/
            // SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewPage()),
                );
              },
              child: Text('Workouts ❚█══█❚'),
            ),
            SizedBox(height: 40, width: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BrainExercise()),
                );
              },
              child: Text('Brain Exercise 🧠'),
            ),
            SizedBox(height: 40, width: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunityPage()),
                );
              },
              child: Text('Community 🫂'),
            ),
            SizedBox(height: 40, width: 10),
            /*ElevatedButton(
              onPressed: () {
                // Navigate to profile screen
              },
              child: Text('Profile'),
            ),*/
          ],
        ),
      ),
    );
  }
}

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

class SportsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!ModalRoute) {
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

/*import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
*/
