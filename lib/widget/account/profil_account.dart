///
/// widget/account/profil_account.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/model/airtable_data_account.dart';
import 'package:travel_app/theme.dart';

Widget profilAccount() {
  final AirtableData airtableData = AirtableData();

  return Container(
    padding: EdgeInsets.only(top: 35),
    child: FutureBuilder(
      future: airtableData.getAccount(),
      builder: (BuildContext context,
          AsyncSnapshot<List<AirtableDataAccount>> snapshot) {
        if (snapshot.hasData) {
          List<AirtableDataAccount>? values = snapshot.data;
          return ListView(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: values!
                .map((AirtableDataAccount value) => Column(
                      children: <Widget>[
                        Center(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(value.image),
                            maxRadius: 50,
                            backgroundColor: cyanLight,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Text(
                                value.name,
                                style: TextStyle(
                                  color: pacificBlue,
                                  fontSize: 20,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              Padding(padding: const EdgeInsets.all(5),),
                              Text(
                                value.username,
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 16,
                                  fontFamily: 'Raleway',
                                  fontStyle: FontStyle.italic
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(30),
                          child: Text(
                            value.description,
                            style: TextStyle(
                              fontFamily: 'montserrat',
                              color: greyDark,
                              height: 1.4
                            ),
                          ),
                        )
                      ],
                    ))
                .toList(),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    ),
  );
}
