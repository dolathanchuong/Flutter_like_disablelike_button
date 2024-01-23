// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file. https://github.com/200lab-Education/flutter-travo-app

import 'package:flutter/material.dart';

import 'DogName.dart';
import 'like_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 1
  String likedStatusText = 'You have not like yet!';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 3
                LikeButton((isLiked) {
                  // 4
                  setState(() {
                    likedStatusText =
                        isLiked ? 'You liked!' : 'You have not like yet!';
                  });
                }),
                DogName(likedStatusText),
                const SizedBox(height: 8.0),
                DogName(likedStatusText),
                const SizedBox(height: 8.0),
                DogName(likedStatusText),
              ],
            ),
          ),
        ));
  }
}
