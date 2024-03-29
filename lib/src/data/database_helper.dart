import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import '../model/user_model.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper.internal();
  DBHelper.internal();
  factory DBHelper() => _instance;
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDB();
    return _db;
  }

  Future<Database> initDB() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'fworkout.db');
    Database db = await openDatabase(
      path,
      version: 1,
      onCreate: _createTables,
    );
    print('[DBHelper] initDB: Success');
    return db;
  }

  void _createTables(Database db, int version) async {
    await db.execute(
      'CREATE TABLE User(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, password TEXT)',
    );
    print('[DBHelper] _createTables: Success');
  }

  void saveUser(String name, String email, String password) async {
    var dbClient = await db;
    await dbClient.transaction((trans) async {
      return await trans.rawInsert(
        'INSERT INTO User(name, email, password) VALUES(\'$name\', \'$email\', \'$password\')',
      );
    });
    print('[DBHelper] saveUser: Success | $name, $email, $password');
  }

  Future<List<User>> getUser(String email, String password) async {
    var dbClient = await db;
    List<User> usersList = List();
    List<Map> queryList = await dbClient.rawQuery(
      'SELECT * FROM User WHERE email=\'$email\' AND password=\'$password\'',
    );
    print('[DBHelper] getUser: ${queryList.length} users');
    if (queryList != null && queryList.length > 0) {
      for (int i = 0; i < queryList.length; i++) {
        usersList.add(User(
          queryList[i]['id'].toString(),
          queryList[i]['name'],
          queryList[i]['email'],
          queryList[i]['password'],
        ));
      }
      print('[DBHelper] getUser: ${usersList[0].name}');
      return usersList;
    } else {
      print('[DBHelper] getUser: User is null');
      return null;
    }
  }
}
