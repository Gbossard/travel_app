///
/// model/airtable_data_account.dart
///

import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:travel_app/utils/config.dart';
 
class AirtableDataAccount {
  String id;
  String createdTime;
  String name;
  String username;
  String description;
  String image;
 
  AirtableDataAccount({
    required this.id,
    required this.createdTime,
    required this.name,
    required this.username,
    required this.description,
    required this.image,
  });
}
 
class AirtableData {
  final Uri urlAccount = Uri.https(
    "api.airtable.com",
    "/v0/${Config.airtableProjectBase}/account",
    {"maxRecords": "10", "view": "Grid view"},
  );
 
  Future<List<AirtableDataAccount>> getAccount() async {
    final res = await http.get(
      urlAccount,
      headers: {"Authorization": "Bearer ${Config.airtableApiKey}"},
    );
 
    if (res.statusCode == 200) {
      var convertDataToJson = jsonDecode(res.body);
      var data = convertDataToJson['records'];
 
      List<AirtableDataAccount> values = [];
      data.forEach(
        (value) => {
          values.add(
            AirtableDataAccount(
              id: value['id'],
              createdTime: value['createdTime'],
              name: value['fields']['name'],
              username: value['fields']['username'],
              description: value['fields']['description'],
              image: value['fields']['image'][0]['url'],
            ),
          )
        },
      );
      return values;
    } else {
      throw "ERROR !!!!!";
    }
  }
}
