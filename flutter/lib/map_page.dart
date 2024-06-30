import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'map/tile_providers.dart';

class MapPage extends StatelessWidget {
  MapPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: const MenuDrawer(HomePage.route),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              //initialCenter: const LatLng(51.5, -0.09),
              initialCenter: LatLng(42.3001, -71.1204), // Center on Harvard Arboretum,
              initialZoom: 5,
              cameraConstraint: CameraConstraint.contain(
                // Latitude: 42° 21' 30.35" N
                // Longitude: -71° 03' 35.17" W
                bounds: LatLngBounds(
                  // const LatLng(-90, -180),
                  // const LatLng(-90, -180),
                  const LatLng(40, -69),
                  const LatLng(44, -73),
                ),
              ),
            ),
            children: [
              openStreetMapTileLayer,
              RichAttributionWidget(
                popupInitialDisplayDuration: const Duration(seconds: 5),
                animationConfig: const ScaleRAWA(),
                showFlutterMapAttribution: false,
                attributions: [
                  // TextSourceAttribution(
                  //   'OpenStreetMap contributors',
                  //   onTap: () async => launchUrl(
                  //     Uri.parse('https://openstreetmap.org/copyright'),
                  //   ),
                  // ),
                  // const TextSourceAttribution(
                  //   'This attribution is the same throughout this app, except '
                  //       'where otherwise specified',
                  //   prependCopyright: false,
                  // ),
                ],
              ),
            ],
          ),
          // const FloatingMenuButton()
        ],
      ),
    );
  }
}