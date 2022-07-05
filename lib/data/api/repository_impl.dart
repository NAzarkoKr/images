import 'dart:convert';

import 'package:images/data/model/exhibit.dart';
import 'package:images/domain/repository.dart';
import 'package:http/http.dart' as http;

class RestExhibitsLoader implements ExhibitsLoader {
  String baseUrl = "https://my-json-server.typicode.com/Reyst/exhibit_db/list";
  @override
  Future<List<Exhibit>> getExhibitList() async {
    http.Response res = await http.get(Uri.parse(baseUrl));
    List<dynamic> list = json.decode(res.body);
    return list.map((e) => Exhibit.fromJson(e)).toList();
  }
}
