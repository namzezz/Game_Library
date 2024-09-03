import 'package:flutter/material.dart';
import 'package:game_library/library.dart';
import 'package:game_library/wishlist.dart';

class GamePage extends StatelessWidget {
  void addToLibrary(Game game, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LibraryPage(purchasedGame: [game]),
      ),
    );
  }

  void addToWishlist(Game game, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WishlistPage(wishlistedGames: []),
      ),
    );
  }

  void purchaseGame(Game game, BuildContext context) async {
    // Assume the database connection is already established
    // Use the connection to insert the game into the library table
    // Example: connection.insert('library', game.toMap());

    print('Game purchased successfully');

    addToLibrary(game, context);
  }

  void addGameToWishlist(Game game, BuildContext context) async {
    // Assume the database connection is already established
    // Use the connection to insert the game into the wishlist table
    // Example: connection.insert('wishlist', game.toMap());

    print('Game added to wishlist');

    addToWishlist(game, context);
  }

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
        actions: [
          Row(
            children: [
              Opacity(
                opacity: 0.8,
                child: GestureDetector(
                  onTap: () {
                    // Handle the click event for search field
                    print('Search field clicked');
                  },
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Search store',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            fontFamily: 'Chakra Petch',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 20.0),
          Icon(
            Icons.people,
            color: Colors.black,
          ),
          SizedBox(width: 5.0),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              '50',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
                fontFamily: 'Chakra Petch',
              ),
            ),
          ),
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          SizedBox(width: 10.0),
          CircleAvatar(
            backgroundImage:
                AssetImage('assets/WhatsApp Image 2023-04-24 at 00.05 1.png'),
          ),
          SizedBox(width: 10.0),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Namzezzz',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontFamily: 'Chakra Petch',
                    ),
                  ),
                ),
                Text(
                  'Level 5',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontFamily: 'Chakra Petch',
                  ),
                ),
              ],
            ),
          ),
        ],
        title: Row(
          children: [
            SizedBox(width: 10.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LibraryPage(purchasedGame: [])),
                );
              },
              child: Text(
                'Your store',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontFamily: 'Chakra Petch',
                ),
              ),
            ),
            SizedBox(width: 20.0),
            GestureDetector(
              onTap: () {
                // Handle the click event for Clickable Text 2
                print('Clickable Text 2 clicked');
              },
              child: Text(
                'Games',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontFamily: 'Chakra Petch',
                ),
              ),
            ),
            SizedBox(width: 20.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WishlistPage(wishlistedGames: [])),
                );
              },
              child: Text(
                'Wishlist',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontFamily: 'Chakra Petch',
                ),
              ),
            ),
            SizedBox(width: 20.0),
            GestureDetector(
              onTap: () {
// Handle the click event for Clickable Text 4
                print('Clickable Text 4 clicked');
              },
              child: Text(
                'Publish',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontFamily: 'Chakra Petch',
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Game Name',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ChakraPetch',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image of the game
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Image.asset(
                      'assets/game1.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 50),

                  // Column for price, buttons, and other text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price: \$9.99',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            onPrimary: Colors.white,
                          ),
                          child: Text('Purchase'),
                          onPressed: () {
                            Game purchasedGame = Game(
                              name: 'Game Name',
                              imagePath: 'assets/game1.png',
                              specs: 'Game Specs',
                              hoursPlayed: 0,
                            );

                            // Navigate to the LibraryPage with the purchased game
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LibraryPage(
                                  purchasedGame: [game],
                                ),
                              ),
                            ); // Add your purchase button logic here
                          },
                        ),
                        SizedBox(height: 16),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            onPrimary: Colors.white,
                          ),
                          icon: Icon(Icons.add),
                          label: Text('Add to Wishlist'),
                          onPressed: () {
                            Games wishlistedGame = Games(
                              name: 'Game Name',
                              imagePath: 'assets/game1.png',
                              specs: 'Game Specs',
                            );
                            // Add your add to wishlist button logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WishlistPage(
                                      wishlistedGames: [wishlistedGame])),
                            );
                            // Add your purchase button logic here
                          },
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Developer: John Doe',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'ChakraPetch',
                          ),
                        ),
                        Text(
                          'Release Date: May 1, 2023',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'ChakraPetch',
                          ),
                        ),
                        Text(
                          'Platform: Android, iOS, Windows',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'ChakraPetch',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
void _addToLibrary(BuildContext context) {
  // Add logic to add the purchased game to the library
  // Here, you can add the game to a list of owned games or perform any other necessary actions

  // Example: Add the purchased game to the library
  final Game purchasedGame = Game(
    name: 'Purchased Game',
    imagePath: 'assets/purchased_game.png',
    specs: 'Specs of purchased game',
    hoursPlayed: 0,
  );*/

// Navigate to the LibraryPage and pass the purchased game as an argument
// Navigate to the LibraryPage with the purchased game

//}
