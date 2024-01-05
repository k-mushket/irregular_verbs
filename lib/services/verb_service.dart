import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import 'package:irregular_verbs/models/verb.dart';

Future<List<Verb>> loadVerbs() async {
  final jsonString =
      await rootBundle.loadString('lib/assets/irregular_verbs.json');
  Map<String, dynamic> jsonMap = json.decode(jsonString);
  List<dynamic> jsonList = jsonMap['group_one'];
  return jsonList.map((json) => Verb.fromJson(json)).toList();
}
