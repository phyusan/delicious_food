import 'package:delicious_menu/homepage/service/menu_order_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MenuOrder {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'database.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE Order(id INTEGER PRIMARY KEY AUTOINCREMENT,productname TEXT NOT NULL, productphoto TEXT, price INT,qty INT)",
        );
      },
      version: 1,
    );
  }

  Future<void> insertorder(OrderModel order) async {
    int result = 0;
    final Database db = await initializeDB();
    final id = await db.insert('Order', order.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<OrderModel>> orderresult() async {
    final Database db = await initializeDB();
    final List<Map<String, dynamic>> maps = await db.query('Orders');
    return List.generate(maps.length, (i) {
      return OrderModel(
        id: maps[i]['id'],
        productname: maps[i]['productname'],
        productphoto: maps[i]['productphoto'],
        price: maps[i]['price'],
        qty: maps[i]['qty'],
      );
    });
  }

  Future<void> updateOrder(OrderModel order) async {
    // Get a reference to the database.
    final Database db = await initializeDB();

    // Update the given Dog.
    await db.update(
      'orders',
      order.toMap(),
      // Ensure that the Dog has a matching id.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [order.id],
    );
  }

  Future<void> deleteOrder(int id) async {
    // Get a reference to the database.
    final Database db = await initializeDB();

    // Remove the Dog from the database.
    await db.delete(
      'orders',
      // Use a `where` clause to delete a specific dog.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );

// Print the updated results.
  }
}
