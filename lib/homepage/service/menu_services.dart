import 'package:delicious_menu/homepage/service/menu_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqliteService {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'database.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE Notes(id INTEGER PRIMARY KEY AUTOINCREMENT,  description TEXT NOT NULL)",
        );
      },
      version: 1,
    );
  }

  Future<void> reateItem(Note note) async {
    int result = 0;
    final Database db = await initializeDB();
    final id = await db.insert('Notes', note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Note>> notes() async {
    final Database db = await initializeDB();
    final List<Map<String, dynamic>> maps = await db.query('dogs');
    return List.generate(maps.length, (i) {
      return Note(
        id: maps[i]['id'],
        description: maps[i]['description'],
      );
    });
  }

  Future<void> updateNote(Note note) async {
    // Get a reference to the database.
    final Database db = await initializeDB();

    // Update the given Dog.
    await db.update(
      'dogs',
      note.toMap(),
      // Ensure that the Dog has a matching id.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [note.id],
    );
  }

  Future<void> deleteNote(int id) async {
    // Get a reference to the database.
    final Database db = await initializeDB();

    // Remove the Dog from the database.
    await db.delete(
      'dogs',
      // Use a `where` clause to delete a specific dog.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );

// Print the updated results.
  }
}
