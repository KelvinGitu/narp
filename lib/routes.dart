//loggedIn
//loggedOut
import 'package:delivery_app/features/google_maps/views/display_map.dart';
import 'package:delivery_app/features/navbar/views/navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:delivery_app/features/authentication/views/login_screen.dart';
import 'package:delivery_app/features/delivery/views/receive_package.dart';
import 'package:delivery_app/features/delivery/views/send_package.dart';
// import 'package:delivery_app/features/home/views/home_screen.dart';

final loggedOutRoutes = RouteMap(routes: {
  '/': (_) => MaterialPage(child: LoginPage()),
});

final loggedInRoutes = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: NavBarScreen()),
  '/send-package': (_) => const MaterialPage(child: SendPackage()),
  '/receive-package': (_) => const MaterialPage(child: ReceivePackage()),
  '/display-map': (_) => const MaterialPage(child: MapScreen()),
});
