import 'package:flutter/material.dart';
import 'package:game_library/gamepage.dart';
import 'package:game_library/gamepage1.dart';
import 'package:game_library/publish.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedGenre;
  String? selectedPublisher;
  int? selectedRating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width *
                0.06, // 1/10 of the page width
            color: Colors.orange,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png', // Replace with the path to your logo image
                    height: 50.0,
                    width: 50.0,
                  ),
                  SizedBox(height: 140.0),
                  Image.asset(
                    'assets/Mask group.png',
                    color: Colors.black, // Replace with the path to your image
                  ),
                  SizedBox(height: 10.0),
                  Image.asset(
                    'assets/ghost.png',
                    color: Colors.black, // Replace with the path to your image
                  ),
                  SizedBox(height: 15.0),
                  Image.asset(
                    'assets/pcc.png',
                    color: Colors.black, // Replace with the path to your image
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16.0), // Padding on the left side
              child: Column(
                children: [
                  AppBar(
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 6.0),
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
                        backgroundImage: AssetImage('assets/WhatsApp Image 2023-04-24 at 00.05 1.png'),
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
                            // Handle the click event for Clickable Text 1
                            print('Clickable Text 1 clicked');
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
                            // Handle the click event for Clickable Text 3
                            print('Clickable Text 3 clicked');
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Publish()),
                            );
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
                  SizedBox(
                      height:
                          20.0), // Add the desired spacing between navbar and sorting row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors
                              .orange, // Set the dropdown button color here
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: DropdownButton<String>(
                          value: selectedGenre ?? 'Genre',
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedGenre = newValue;
                            });
                          },
                          items: <String>[
                            'Genre',
                            'Action',
                            'Adventure',
                            'Role-Playing',
                            'Strategy',
                            'Simulation',
                            'Sports',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors
                              .orange, // Set the dropdown button color here
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: DropdownButton<String>(
                          value: selectedPublisher ?? 'Publisher',
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedPublisher = newValue;
                            });
                          },
                          items: <String>[
                            'Publisher',
                            'Publisher 1',
                            'Publisher 2',
                            'Publisher 3',
                            'Publisher 4',
                            'Publisher 5',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'ChakraPetch'),
                          dropdownColor: Colors.orange,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors
                              .orange, // Set the dropdown button color here
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: DropdownButton<int>(
                          value: selectedRating ?? 1,
                          onChanged: (int? newValue) {
                            setState(() {
                              selectedRating = newValue;
                            });
                          },
                          items: <int>[1, 2, 3, 4, 5]
                              .map<DropdownMenuItem<int>>((int value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to the home page
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text('Sort'),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hot&New',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the first card
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GamePage()),
                            );
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/game1.png', // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the second card
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GamePage1()),
                            );
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/spiderman.png', // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the third card
                            print('Card 3 clicked');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/elden ring.png', // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the fourth card
                            print('Card 4 clicked');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/d2.png', // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the fifth card
                            print('Card 5 clicked ');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/fh5.png', // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the fifth card
                            print('Card 5 clicked ');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/re4.png', // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the fifth card
                            print('Card 5 clicked ');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/batman.png', // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the fifth card
                            print('Card 5 clicked ');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/apex.png', // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Trending',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the first card
                            print('Card 1 clicked');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/rdr2.png', // Replace with your image path
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the first card
                            print('Card 1 clicked');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/game  tranding.png', // Replace with your image path
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the first card
                            print('Card 1 clicked');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/game  tranding (1).png', // Replace with your image path
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the first card
                            print('Card 1 clicked');
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/game  tranding (2).png', // Replace with your image path
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the first card
                          },
                          child: Container(
                            width: 300.0,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                // Card content (clickable image)
                                Image.asset(
                                  'assets/game  tranding (3).png', // Replace with your image path
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
