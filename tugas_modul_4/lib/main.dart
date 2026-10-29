import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MusicPlayer(),
    );
  }
}

class MusicPlayer extends StatelessWidget{
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFF10141B),

      body: const Center(
        child: Text(
          'Music Player',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 12,
        ),
        color: const Color(0xFF0A0D12),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(
              Icons.shuffle,
              size: 24,
              color:Colors.white,
            ),
            ),

            IconButton(onPressed: () {}, icon: const Icon(
              Icons.skip_previous,
              size: 28,
              color: Colors.white,
            ),
            ),

            Container(
              width: 64,
              height: 64,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: () {}, icon: const Icon(
                Icons.play_arrow,
                size: 38,
                color: Colors.black,
              ),
              ),
            ),

            IconButton(
              onPressed: () {}, icon: const Icon(
              Icons.skip_next,
              size: 28,
              color: Colors.white,
            ),
            ),

        IconButton(
            onPressed: () {}, icon: const Icon(
            Icons.repeat,
            size: 24,
            color: Colors.white,
        ),
        ),
          ],
        ),
      ),
    );
  }
}