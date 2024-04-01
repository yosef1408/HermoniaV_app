import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

enum Source { Asset, Network }

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;

  /*Uri videoUri = Uri.parse(
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");*/
  String assetVideoPath = "lib/assets/jumpingjacks.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  /*Widget _sourceButtons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MaterialButton(
          color: Colors.red,
          child: const Text(
            "Network",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            setState(() {
              currentSource = Source.Network;
              initializeVideoPlayer(currentSource);
            });
          },
        ),
        MaterialButton(
          color: Colors.red,
          child: const Text(
            "Asset",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            setState(() {
              currentSource = Source.Asset;
              initializeVideoPlayer(currentSource);
            });
          },
        ),
      ],
    );
  }*/

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } /*else if (source == Source.Network) {
      _videoPlayerController = VideoPlayerController.networkUrl(videoUri)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    }*/
    else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: VideoPlayerPage(),
    );
  }
}

class VideoPlayerPage_highknee extends StatefulWidget {
  const VideoPlayerPage_highknee({super.key});

  @override
  State<VideoPlayerPage_highknee> createState() =>
      _VideoPlayerPageState_highknee();
}

class _VideoPlayerPageState_highknee extends State<VideoPlayerPage_highknee> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/highknee.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_burpees extends StatefulWidget {
  const VideoPlayerPage_burpees({super.key});

  @override
  State<VideoPlayerPage_burpees> createState() =>
      _VideoPlayerPageState_burpees();
}

class _VideoPlayerPageState_burpees extends State<VideoPlayerPage_burpees> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/Burpees.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_rope extends StatefulWidget {
  const VideoPlayerPage_rope({super.key});

  @override
  State<VideoPlayerPage_rope> createState() => _VideoPlayerPageState_rope();
}

class _VideoPlayerPageState_rope extends State<VideoPlayerPage_rope> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/jumprope.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_climb extends StatefulWidget {
  const VideoPlayerPage_climb({super.key});

  @override
  State<VideoPlayerPage_climb> createState() => _VideoPlayerPageState_climb();
}

class _VideoPlayerPageState_climb extends State<VideoPlayerPage_climb> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/Mountainclimbers.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_push extends StatefulWidget {
  const VideoPlayerPage_push({super.key});

  @override
  State<VideoPlayerPage_push> createState() => _VideoPlayerPageState_push();
}

class _VideoPlayerPageState_push extends State<VideoPlayerPage_push> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/pushup.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_plank extends StatefulWidget {
  const VideoPlayerPage_plank({super.key});

  @override
  State<VideoPlayerPage_plank> createState() => _VideoPlayerPageState_plank();
}

class _VideoPlayerPageState_plank extends State<VideoPlayerPage_plank> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/plank.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_squat extends StatefulWidget {
  const VideoPlayerPage_squat({super.key});

  @override
  State<VideoPlayerPage_squat> createState() => _VideoPlayerPageState_squat();
}

class _VideoPlayerPageState_squat extends State<VideoPlayerPage_squat> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/squat.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

/*yogaaaaaaaa*/

class VideoPlayerPage_mopose extends StatefulWidget {
  const VideoPlayerPage_mopose({super.key});

  @override
  State<VideoPlayerPage_mopose> createState() => _VideoPlayerPageState_mopose();
}

class _VideoPlayerPageState_mopose extends State<VideoPlayerPage_mopose> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/mopose.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_downward extends StatefulWidget {
  const VideoPlayerPage_downward({super.key});

  @override
  State<VideoPlayerPage_downward> createState() =>
      _VideoPlayerPageState_downward();
}

class _VideoPlayerPageState_downward extends State<VideoPlayerPage_downward> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/Downward-FacingDog.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_tree extends StatefulWidget {
  const VideoPlayerPage_tree({super.key});

  @override
  State<VideoPlayerPage_tree> createState() => _VideoPlayerPageState_tree();
}

class _VideoPlayerPageState_tree extends State<VideoPlayerPage_tree> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/tree.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_seatedforward extends StatefulWidget {
  const VideoPlayerPage_seatedforward({super.key});

  @override
  State<VideoPlayerPage_seatedforward> createState() =>
      _VideoPlayerPageState_seatedforward();
}

class _VideoPlayerPageState_seatedforward
    extends State<VideoPlayerPage_seatedforward> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/SeatedForward.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_cobra extends StatefulWidget {
  const VideoPlayerPage_cobra({super.key});

  @override
  State<VideoPlayerPage_cobra> createState() => _VideoPlayerPageState_cobra();
}

class _VideoPlayerPageState_cobra extends State<VideoPlayerPage_cobra> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/cobra.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_warrior extends StatefulWidget {
  const VideoPlayerPage_warrior({super.key});

  @override
  State<VideoPlayerPage_warrior> createState() =>
      _VideoPlayerPageState_warrior();
}

class _VideoPlayerPageState_warrior extends State<VideoPlayerPage_warrior> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/warrior.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_lunges extends StatefulWidget {
  const VideoPlayerPage_lunges({super.key});

  @override
  State<VideoPlayerPage_lunges> createState() => _VideoPlayerPageState_lunges();
}

class _VideoPlayerPageState_lunges extends State<VideoPlayerPage_lunges> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/lunges.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_plankjacks extends StatefulWidget {
  const VideoPlayerPage_plankjacks({super.key});

  @override
  State<VideoPlayerPage_plankjacks> createState() =>
      _VideoPlayerPageState_plankjacks();
}

class _VideoPlayerPageState_plankjacks
    extends State<VideoPlayerPage_plankjacks> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/plankjacks.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_tricep extends StatefulWidget {
  const VideoPlayerPage_tricep({super.key});

  @override
  State<VideoPlayerPage_tricep> createState() => _VideoPlayerPageState_tricep();
}

class _VideoPlayerPageState_tricep extends State<VideoPlayerPage_tricep> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/tricep.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_crunches extends StatefulWidget {
  const VideoPlayerPage_crunches({super.key});

  @override
  State<VideoPlayerPage_crunches> createState() =>
      _VideoPlayerPageState_crunches();
}

class _VideoPlayerPageState_crunches extends State<VideoPlayerPage_crunches> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/crunches.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_legraises extends StatefulWidget {
  const VideoPlayerPage_legraises({super.key});

  @override
  State<VideoPlayerPage_legraises> createState() =>
      _VideoPlayerPageState_legraises();
}

class _VideoPlayerPageState_legraises extends State<VideoPlayerPage_legraises> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/legraises.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_hundred extends StatefulWidget {
  const VideoPlayerPage_hundred({super.key});

  @override
  State<VideoPlayerPage_hundred> createState() =>
      _VideoPlayerPageState_hundred();
}

class _VideoPlayerPageState_hundred extends State<VideoPlayerPage_hundred> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/hundred.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_rollup extends StatefulWidget {
  const VideoPlayerPage_rollup({super.key});

  @override
  State<VideoPlayerPage_rollup> createState() => _VideoPlayerPageState_rollup();
}

class _VideoPlayerPageState_rollup extends State<VideoPlayerPage_rollup> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/rollup.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_singleleg extends StatefulWidget {
  const VideoPlayerPage_singleleg({super.key});

  @override
  State<VideoPlayerPage_singleleg> createState() =>
      _VideoPlayerPageState_singleleg();
}

class _VideoPlayerPageState_singleleg extends State<VideoPlayerPage_singleleg> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/singleleg.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_doubleleg extends StatefulWidget {
  const VideoPlayerPage_doubleleg({super.key});

  @override
  State<VideoPlayerPage_doubleleg> createState() =>
      _VideoPlayerPageState_doubleleg();
}

class _VideoPlayerPageState_doubleleg extends State<VideoPlayerPage_doubleleg> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/doubleleg.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_bridge extends StatefulWidget {
  const VideoPlayerPage_bridge({super.key});

  @override
  State<VideoPlayerPage_bridge> createState() => _VideoPlayerPageState_bridge();
}

class _VideoPlayerPageState_bridge extends State<VideoPlayerPage_bridge> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/bridge.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_swandive extends StatefulWidget {
  const VideoPlayerPage_swandive({super.key});

  @override
  State<VideoPlayerPage_swandive> createState() =>
      _VideoPlayerPageState_swandive();
}

class _VideoPlayerPageState_swandive extends State<VideoPlayerPage_swandive> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/swandive.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_frontpunch extends StatefulWidget {
  const VideoPlayerPage_frontpunch({super.key});

  @override
  State<VideoPlayerPage_frontpunch> createState() =>
      _VideoPlayerPageState_frontpunch();
}

class _VideoPlayerPageState_frontpunch
    extends State<VideoPlayerPage_frontpunch> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/frontpunch.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_roundhouse extends StatefulWidget {
  const VideoPlayerPage_roundhouse({super.key});

  @override
  State<VideoPlayerPage_roundhouse> createState() =>
      _VideoPlayerPageState_roundhouse();
}

class _VideoPlayerPageState_roundhouse
    extends State<VideoPlayerPage_roundhouse> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/roundhouse.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_sidekick extends StatefulWidget {
  const VideoPlayerPage_sidekick({super.key});

  @override
  State<VideoPlayerPage_sidekick> createState() =>
      _VideoPlayerPageState_sidekick();
}

class _VideoPlayerPageState_sidekick extends State<VideoPlayerPage_sidekick> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/sidekick.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_frontkick extends StatefulWidget {
  const VideoPlayerPage_frontkick({super.key});

  @override
  State<VideoPlayerPage_frontkick> createState() =>
      _VideoPlayerPageState_frontkick();
}

class _VideoPlayerPageState_frontkick extends State<VideoPlayerPage_frontkick> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/frontkick.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}

class VideoPlayerPage_lowerblock extends StatefulWidget {
  const VideoPlayerPage_lowerblock({super.key});

  @override
  State<VideoPlayerPage_lowerblock> createState() =>
      _VideoPlayerPageState_lowerblock();
}

class _VideoPlayerPageState_lowerblock
    extends State<VideoPlayerPage_lowerblock> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;
  String assetVideoPath = "lib/assets/lowerblock.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                // _sourceButtons(),
              ],
            ),
    );
  }

  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _videoPlayerController;
    if (source == Source.Asset) {
      _videoPlayerController = VideoPlayerController.asset(assetVideoPath)
        ..initialize().then((value) {
          setState(() {
            isLoading = false;
          });
        });
    } else {
      return;
    }
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}
