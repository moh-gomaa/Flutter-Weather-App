import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weather_app/resources/constants/constants.dart' as constant;

class DBHelper {
  static final DBHelper _instance = new DBHelper.internal();

  factory DBHelper() => _instance;

  DBHelper.internal();

  final WeatherLocalTable = "WeatherLocalTable";
  String ID = "ID";
  String region = "region";
  String lat = "lat";
  String lon = "lon";
  String isCurrent = "isCurrent";

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDB();
    return _db!;
  }

  initDB() async {
    Directory docDir = await getApplicationDocumentsDirectory();
    String path = join(docDir.path, constant.db);
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    db.execute('''
          CREATE TABLE $WeatherLocalTable (
          $ID INTEGER PRIMARY KEY, 
          $region TEXT,
          $lat REAL,
          $lon REAL,
          $isCurrent INTEGER
          )
        ''');
  }

  Future close() async {
    var dbClient = await (db);
    return dbClient.close();
  }
}
