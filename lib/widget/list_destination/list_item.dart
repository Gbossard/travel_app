///
/// widget/list_destination/list_item.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/model/airtable_data_destination.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/imageStack.dart';

Widget listItem(BuildContext context) {
  final AirtableData airtableData = AirtableData();

  return Container(
    padding: EdgeInsets.only(top: 5),
    child: FutureBuilder(
      future: airtableData.getDestination(),
      builder: (BuildContext context,
          AsyncSnapshot<List<AirtableDataDestination>> snapshot) {
        if (snapshot.hasData) {
          List<AirtableDataDestination>? values = snapshot.data;
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 10),
                  child: Text(
                    "Découvrez les destinations",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      color: grey,
                    ),
                  ),
                ),             
                SizedBox(
                  height: 540,
                  child: ListView(
                    primary: false,
                    physics: BouncingScrollPhysics(),
                    children: values!
                      .map(
                        (AirtableDataDestination value) => Container(
                          margin: EdgeInsets.only(left: 15, top: 15),
                          child: imageStack(context, value)),
                      )
                      .toList(),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    ),
  );
}