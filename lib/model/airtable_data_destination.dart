///
/// model/airtable_data_destination.dart
///

import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:travel_app/utils/config.dart';
 
class AirtableDataDestination {
  String id;
  String createdTime;
  String name;
  // String country;
  // String description;
  // String category;
  String cover;
  // List<String> images;
  // String type;
 
  AirtableDataDestination({
    required this.id,
    required this.createdTime,
    required this.name,
    // required this.country,
    // required this.description,
    // required this.category,
    required this.cover,
    // required this.images,
    // required this.type,
  });
}
 
class AirtableData {
  final Uri urlDestination = Uri.https(
    "api.airtable.com",
    "/v0/${Config.airtableProjectBase}/destination",
    {"maxRecords": "10", "view": "Grid view"},
  );
 
  Future<List<AirtableDataDestination>> getDestination() async {
    final res = await http.get(
      urlDestination,
      headers: {"Authorization": "Bearer ${Config.airtableApiKey}"},
    );
 
    print(res.body);
 
    if (res.statusCode == 200) {
      var convertDataToJson = jsonDecode(res.body);
      var data = convertDataToJson['records'];
 
      print(data);
 
      List<AirtableDataDestination> values = [];
      data.forEach(
        (value) {
          dynamic images = value['fields']['images'];
          List<String> imageList = [];
          images.forEach((image) => imageList.add(image['url']));
          return values.add(
            AirtableDataDestination(
              id: value['id'],
              createdTime: value['createdTime'],
              name: value['fields']['name'],
              // country: value['fields']['country'],
              // description: value['fields']['description'],
              // category: value['fields']['category'],
              cover: value['fields']['cover'][0]['url'],
              // images: imageList,
              // type: value['fields']['type'],
            ),
          );
        }
      );
      
      return values;
    } else {
      throw "ERROR !!!!!";
    }
  }
}
