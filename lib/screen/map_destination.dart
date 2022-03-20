///
/// screen/map_destination.dart
///
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/home/header_home.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
class MapDestinationScreen extends StatefulWidget {
  const MapDestinationScreen({ Key? key }) : super(key: key);

  @override
  State<MapDestinationScreen> createState() => _MapDestinationScreenState();
}

class _MapDestinationScreenState extends State<MapDestinationScreen> {
  final PopupController _popupController = PopupController();
  final MapController _mapController = MapController();
  final double _zoom = 20;
  final List<LatLng> _latLngList = [
    LatLng(-44, 169),
    LatLng(-45, 170),
    LatLng(-45, 168),
    LatLng(51, 114),
    LatLng(-44, 170.69),
    LatLng(51, -114),
    LatLng(51, 120),
    LatLng(54, -110),
    LatLng(60, -120),
    LatLng(70, -150),
  ];
  List<Marker> _markers = [];

  @override
  void initState() {
    _markers = _latLngList
        .map((point) => Marker(
          width: 60,
          height: 60,
          point: point,
          builder: (context) => const Icon(
            Icons.room,
            size: 50,
            color: pacificBlue,
          ),
        ))
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          headerHome(context, true),
          Container(
            height: MediaQuery.of(context).size.height,
            child: FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                zoom: _zoom,
                bounds: LatLngBounds.fromPoints(_latLngList),
                plugins: [
                  MarkerClusterPlugin(),
                ],
                onTap: (lat,long) => _popupController.hideAllPopups(),
              ),
              layers: [
                TileLayerOptions(
                  minZoom: 2,
                  maxZoom: 20,
                  backgroundColor: grey,
                  urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerClusterLayerOptions(
                  disableClusteringAtZoom: 16,
                  maxClusterRadius: 100,
                  size: const Size(50, 50),
                  fitBoundsOptions: const FitBoundsOptions(
                    padding: EdgeInsets.all(50),
                  ),
                  markers: _markers,
                  polygonOptions: const PolygonOptions(
                      borderColor: middleBlue,
                      color: greyDark,
                      borderStrokeWidth: 3),
                  popupOptions: PopupOptions(
                      popupSnap: PopupSnap.mapTop,
                      popupController: _popupController,
                      popupBuilder: (_, marker) => Container(
                        color: greyLight,
                        margin: EdgeInsets.only(top: 20),
                        
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Discover beautiful places for travel',
                            style: TextStyle(
                              color: greyDark,
                              fontFamily: 'Montserrat'
                            ),      
                          ),            
                        )
                      )),
                  builder: (context, markers) {
                    return Container(
                      alignment: Alignment.center,
                      decoration:
                      const BoxDecoration(color: pacificBlue, shape: BoxShape.circle),
                      child: Text('${markers.length}', style: TextStyle(color: greyLight),),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}