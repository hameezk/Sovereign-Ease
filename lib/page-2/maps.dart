import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/models/appointment_model.dart';

class ShowMap extends StatefulWidget {
  final List<AppointmentModel> appointmentModel;

  const ShowMap(
      {super.key, required this.appointmentModel});
  @override
  State<ShowMap> createState() => ShowMapState();
}

class ShowMapState extends State<ShowMap> {
  Completer<GoogleMapController> mapController = Completer();

  List<Marker> pinLocations = [];

  @override
  void dispose() {
    mapController = Completer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getLocation(),
      builder: (context, snapshot) {
        // print('Marker: ${pinLocations[0].position.latitude}');
        if (snapshot.connectionState == ConnectionState.done) {
          return SizedBox(
            // height: 500,
            // width: 500,
            child: (pinLocations.isEmpty)
                ? GoogleMap(
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(51.509865, -0.118092),
                      zoom: 8,
                    ),
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    onMapCreated: (GoogleMapController controller) {
                      mapController.complete(controller);
                    },
                  )
                : GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: pinLocations[0].position,
                      zoom: 14.23,
                    ),
                    markers: Set<Marker>.of(pinLocations),
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    onMapCreated: (GoogleMapController controller) {
                      mapController.complete(controller);
                    },
                  ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  _getLocation() async {
    pinLocations = [];
    for (var offer in widget.appointmentModel) {
      (offer.latitude!.isNotEmpty)
          ? pinLocations.add(
              Marker(
                markerId: MarkerId(offer.appointmentId!),
                position: LatLng(
                  double.tryParse(offer.latitude!) ?? 0.0,
                  double.tryParse(offer.longitude!) ?? 0.0,
                ),
                infoWindow: InfoWindow(
                    title: offer.bookedByName,
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => OfferDetails(
                      //       isLocal: true,
                      //       offerModel: offer,
                      //       ins: 'Local stores',
                      //       categories: widget.categories,
                      //     ),
                      //   ),
                      // );
                    }),
              ),
            )
          : null;
    }

    print('marker id: ${pinLocations.first.markerId}');
  }
}
