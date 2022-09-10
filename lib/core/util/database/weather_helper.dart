import 'dart:async';

import 'package:weather_app/core/util/database/db_helper.dart';
import 'package:weather_app/data/models/weather_local_model.dart';


class WeatherHelper {
  static final WeatherHelper _instance = new WeatherHelper.internal();

  factory WeatherHelper() => _instance;

  WeatherHelper.internal();

  final tableName = "WeatherLocalTable";
  String tablePrimaryKey = "ID";

  Future<int> savePost(WeatherLocalModel row) async {
    var dbClient = await (DBHelper().db);
//    row.logoImage =await getImageLogo(row.memberID.toString());
    var res = await dbClient.insert("$tableName", row.toJson());
    return res;
  }

  Future<List<WeatherLocalModel>> getAll() async {
    var dbClient = await (DBHelper().db);
    List<Map> result = await dbClient.rawQuery("SELECT * FROM $tableName");
    return result.length == 0
        ? []
        : result
            .map((e) => WeatherLocalModel.fromJson(e as Map<String, dynamic>))
            .toList();
  }

  Future<WeatherLocalModel?> get(String id) async {
    var dbClient = await (DBHelper().db);
    var result = await dbClient
        .rawQuery("SELECT * FROM $tableName WHERE ${tablePrimaryKey}=?", [id]);
    if (result.length == 0) return null;

    return new WeatherLocalModel.fromJson(result.first);
  }

  Future<int> delete(String? id) async {
    var dbClient = await (DBHelper().db);
    return await dbClient
        .delete(tableName, where: "$tablePrimaryKey = ?", whereArgs: [id]);
  }

  Future<int> update(WeatherLocalModel row) async {
    var dbClient = await (DBHelper().db);
    return await dbClient.update(tableName, row.toJson(),
        where: "${tablePrimaryKey} =?", whereArgs: [row.ID]);
  }

  Future<bool> deleteAll() async {
    List<WeatherLocalModel> result = await getAll();

    if (result.length > 0) {
      for (var row in result) {
        await delete(row.ID.toString());
      }
    }
    return true;
  }

  Future close() async {
    var dbClient = await (DBHelper().db);
    return dbClient.close();
  }
}
