import 'package:flutter/material.dart';
import 'package:game_library/library.dart';

class Games {
  final String name;
  final String imagePath;
  final String specs;


  Games({
    required this.name,
    required this.imagePath,
    required this.specs,

  });
}

class WishlistPage extends StatelessWidget {
  void addToLibrary(Game game, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LibraryPage(purchasedGame: [game])),
    );
  }
  final List<Games> wishlistedGames;

  WishlistPage({required this.wishlistedGames});

  @override
  Widget build(BuildContext context) {
    Game game = Game(
      name: 'Game Name',
      imagePath: 'assets/game1.png',
      specs: 'Game Specs',
      hoursPlayed: 0,
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Wishlist',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontFamily: 'Chakra Petch',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: wishlistedGames.length,
        itemBuilder: (context, index) {
          Games Game = wishlistedGames[index];

          return ListTile(
            leading: Image.asset(Game.imagePath),
            title: Text(
              Game.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Specs: ${Game.specs}',
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
              child: Text('Purchase'),
              onPressed: () {
                // Add your purchase button logic here


                // Navigate to the LibraryPage with the purchased game
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LibraryPage(
                      purchasedGame: [game],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
