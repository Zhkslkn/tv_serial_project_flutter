import 'package:flutter/material.dart';
import 'list_of_stuff.dart';
import 'list_of_actors.dart';
import 'list_of_news.dart';
import 'list_of_comments.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Professor'),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/main-img.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '',
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
                const SizedBox(height: 250.0),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the list of stuff screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListOfStuff()),
                    );
                  },
                  child: const Text('List of Stuff'),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the list of actors screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListOfActors()),
                    );
                  },
                  child: const Text('List of Actors'),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the list of news screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListOfNews()),
                    );
                  },
                  child: const Text('List of News'),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the list of news screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListCommentScreen()),
                    );
                  },
                  child: const Text('Comments'),
                )
                // Add more buttons for other screens if needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
