import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../models/characters.dart';

class CharacterRepo {
  final url = 'https://rickandmortyapi.com/api/character';

  Future<Character> getCharacter(int page, String name) async {
    try {
      var urls = Uri.parse(url + '?page=$page&name=$name');
      var response = await http.get(urls);
      var jsonResult = json.decode(response.body);
      return Character.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }

  }
}
