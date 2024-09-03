import 'package:sqljocky5/sqljocky.dart';

void main() async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: '127.0.0.1',
    port: 3306, // default port for MySQL
    user: 'Phantom',
    password: 'NaArcArj123',
    db: 'game_library',
  ));

  // Use the 'conn' object to interact with the database

  await conn.close(); // Close the connection when done
}
