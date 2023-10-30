// import 'package:delivery_app/common/core/type_defs.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:fpdart/fpdart.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

// final locationControllerProvider =
//     StateNotifierProvider<LocationController, bool>(
//         (ref) => LocationController());

// class LocationController extends StateNotifier<bool> {
//   final Location location = Location();
//   LocationController() : super(false);

//   Future<void> getLocation() async {
//     bool serviceEnabled;
//     PermissionStatus permissionGranted;
//     LatLng? currentPosition;

//     serviceEnabled = await location.serviceEnabled();
//     if (serviceEnabled) {
//       serviceEnabled = await location.requestService();
//     }

//     permissionGranted = await location.hasPermission();
//     if (permissionGranted == PermissionStatus.denied) {
//       permissionGranted = await location.requestPermission();
//       if (permissionGranted != PermissionStatus.granted) {}
//     }

//     location.onLocationChanged.listen((LocationData currentLocation) {
//       if (currentLocation.latitude != null &&
//           currentLocation.longitude != null) {
//         currentPosition = LatLng(currentLocation.latitude!, currentLocation.longitude!);
//       }
//     });
//   }
// }
