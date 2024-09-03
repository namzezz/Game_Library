import 'package:flutter/material.dart';

class Game {
  final String name;
  final String imagePath;
  final String specs;
  final int hoursPlayed;

  Game({
    required this.name,
    required this.imagePath,
    required this.specs,
    required this.hoursPlayed,
  });
}

class LibraryPage extends StatelessWidget {
  final List<Game> purchasedGame;

  LibraryPage({required this.purchasedGame});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Library',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontFamily: 'Chakra Petch',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: purchasedGame.length,
        itemBuilder: (context, index) {
          Game game = purchasedGame[index];

          return ListTile(
            leading: Image.asset(game.imagePath),
            title: Text(
              game.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Specs: ${game.specs}\nHours Played: ${game.hoursPlayed}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
              ),
              child: Text('Play'),
              onPressed: () {
                // Add your purchase button logic here
                print('Purchase button clicked for ${game.name}');
              },
            ),
          );
        },
      ),
    );
  }
}
