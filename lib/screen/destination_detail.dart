///
/// screen/destination_detail.dart
///
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/global.dart';

import 'package:travel_app/model/airtable_data_destination.dart';
import 'package:travel_app/theme.dart';

import 'package:travel_app/widget/detail_destination/header_detail.dart';

class DestinationDetail extends StatefulWidget {
  final AirtableDataDestination destination;
  DestinationDetail({required this.destination});
  
  @override
  State<DestinationDetail> createState() => _DestinationDetailState();
}

class _DestinationDetailState extends State<DestinationDetail> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      primary: false,
                      physics: BouncingScrollPhysics(),
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        for (var destinationImage in widget.destination.images)
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(destinationImage)
                            ),
                          )
                        )
                      ],                    
                    ),
                  ),
                ],
              ),
            ),
            headerDetail(context),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.4,
                    maxHeight: MediaQuery.of(context).size.height * 0.5),
                padding: EdgeInsets.only(left: 15, bottom: 50, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: widget.destination.images.length,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Color(0xFFFFFFFF),
                          dotColor: Color(0xFFababab),
                          dotHeight: 4.8,
                          dotWidth: 6,
                          spacing: 4.8),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        widget.destination.name,
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: pacificBlue),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Text(
                            widget.destination.country,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: pacificBlue),
                          ),
                          Text(
                            " - ", 
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: pacificBlue
                            ),
                          ),
                          Text(
                            widget.destination.category,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: pacificBlue),
                          ),
                        ],
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        widget.destination.description,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: pacificBlue),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            navigationProvider.setIndex(2);
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: pacificBlue),
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.only(left: 30, right: 30),
                                child: FittedBox(
                                  child: Text(
                                    'SEE ON MAP',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: greyLight),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}