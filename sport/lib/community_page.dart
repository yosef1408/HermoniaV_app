import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Community",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            launchButton(
              title: 'Emotional Support',
              icon: Icons.phone,
              onPressed: () async {
                Uri uri = Uri.parse('tel:1-800-363-363');
                if (!await launcher.launchUrl(uri)) {
                  debugPrint(
                      "Could not launch the uri"); // because the simulator doesn't has the phone app
                }
              },
            ),
            launchButton(
              title: 'Cardio Group',
              icon: Icons.language,
              onPressed: () {
                launcher.launchUrl(
                  Uri.parse('https://chat.whatsapp.com/F9Xp2z5uFngLdzTjYZWPuZ'),
                  mode: launcher.LaunchMode.externalApplication,
                );
              },
            ),
            launchButton(
              title: 'Yoga Group',
              icon: Icons.language,
              onPressed: () {
                launcher.launchUrl(
                  Uri.parse('https://chat.whatsapp.com/JIprJqBQN7V5Wx7i10XbvR'),
                  mode: launcher.LaunchMode.externalApplication,
                );
              },
            ),
            launchButton(
              title: 'Body Weight Group',
              icon: Icons.language,
              onPressed: () {
                launcher.launchUrl(
                  Uri.parse('https://chat.whatsapp.com/Lr7BKRBNP7m7jhlkrTKifP'),
                  mode: launcher.LaunchMode.externalApplication,
                );
              },
            ),
            launchButton(
              title: 'Pilates Group',
              icon: Icons.language,
              onPressed: () {
                launcher.launchUrl(
                  Uri.parse('https://chat.whatsapp.com/DWD1BQSaDUK30043Br4tAq'),
                  mode: launcher.LaunchMode.externalApplication,
                );
              },
            ),
            launchButton(
              title: 'Karate Group',
              icon: Icons.language,
              onPressed: () {
                launcher.launchUrl(
                  Uri.parse('https://chat.whatsapp.com/EGqq0bjb5LbB7MqB9S9SlQ'),
                  mode: launcher.LaunchMode.externalApplication,
                );
              },
            ),
            /*launchButton(
              title: 'Launch Website / URL',
              icon: Icons.language,
              onPressed: () {
                launcher.launchUrl(
                  Uri.parse('https://flutter.dev'),
                  mode: launcher.LaunchMode.externalApplication,
                );
              },
            ),*/
            /* launchButton(
              title: 'Launch SMS / Message',
              icon: Icons.message,
              onPressed: () => launcher.launchUrl(
                Uri.parse(
                  'sms:555010123${Platform.isAndroid ? '?' : '&'}body=Message from flutter app',
                ),
              ),
            ),*/
            /*launchButton(
              title: 'Launch Email',
              icon: Icons.email,
              onPressed: () async {
                Uri uri = Uri.parse(
                  'mailto:info@rapidtech.dev?subject=Flutter Url Launcher&body=Hi, Flutter developer',
                );
                if (!await launcher.launchUrl(uri)) {
                  debugPrint(
                      "Could not launch the uri"); // because the simulator doesn't has the email app
                }
              },
            ),*/
          ],
        ),
      ),
    );
  }

  Widget launchButton({
    required String title,
    required IconData icon,
    required Function() onPressed,
  }) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
