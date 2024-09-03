# URArcade - Game Library

## Overview

**URArcade** is a web application that allows users to explore, purchase, and manage their video game collections. It is designed to provide a comprehensive and user-friendly platform for game enthusiasts to browse, search, and interact with a vast library of games. The system is developed using Flutter for the front end, MySQL for the database, and various plugins such as `mysql1` and `sqflite` for database connectivity.

## Features

### 1. Game Exploration
- Browse and search for games based on genre, platform, price, ratings, and more.
- Access detailed information about each game, including title, genre, developer, and description.

### 2. Game Purchase
- Securely purchase games from the library and add them to your personal collection.
- Wishlist functionality to save games for future reference.

### 3. Library Management
- View and manage your purchased games.
- Track gameplay statistics and remove games from your library if desired.

### 4. Profile Management
- Create and update your user profile, including personal information and preferences.
- Manage login credentials and account security.

### 5. Social and Community Features
- Rate and review games to share your opinions with the community.
- Engage with other users through forums and discussions.
- Publishers can submit games for inclusion in the library, subject to admin approval.

### 6. Admin Features
- Manage the game library, including curation, approval, and content updates.
- Oversee user accounts and enforce platform policies.
- Ensure compliance with legal and copyright regulations.

## Technical Specifications

- **Frontend:** Flutter
- **Backend:** MySQL, with plugins such as `mysql1` and `sqflite`
- **Supported Platforms:** Windows, Linux, with potential expansion to macOS and mobile devices

## Installation

### Prerequisites

- Flutter SDK
- MySQL database server

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/game_library.git
   ```
2. Navigate to the project directory:
   ```bash
   cd game_library
   ```
3. Install the required dependencies:
   ```bash
   flutter pub get
   ```
4. Set up the MySQL database:
   - Create the required tables using the provided SQL scripts.
   - Configure the database connection in the application.

5. Run the application:
   ```bash
   flutter run
   ```

## Database Schema

The database schema includes the following tables:

- **Consumer:** Stores user information including user ID, username, password, funds, and more.
- **Admin:** Stores admin credentials and related information.
- **Games:** Stores game details such as ID, name, price, description, and ratings.
- **InLibrary:** Tracks games added to users' libraries.
- **Wishlist:** Tracks games added to users' wishlists.
- **Playlog:** Logs gameplay activities of users.

## Security Considerations

- **User Authentication:** Secure login and registration process.
- **Data Encryption:** SSL/TLS protocols to secure data transmission.
- **Access Control:** Different access levels for users and admins.
- **Data Privacy:** Compliance with relevant data privacy regulations.

## Future Enhancements

- **Social Features:** Addition of friend lists, leaderboards, and multiplayer capabilities.
- **Platform Expansion:** Support for web and desktop platforms.
- **Personalized Recommendations:** Implementing a recommendation engine.
- **Community Engagement:** Enhanced features for user interaction and feedback.
- **Advanced Analytics:** Tools for gathering user data and improving the user experience.

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request with your changes. 

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

