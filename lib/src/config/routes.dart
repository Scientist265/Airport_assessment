import 'package:flutter/material.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/flight_detail/flight_detail_page.dart';
import 'package:utlpal_ravi_assesment/src/feature/view/home/home_screen.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  homeRoute: (context) => const HomePage(),
  detailRoute: (context) => const DetailPage(),
};

String homeRoute = "/home-screen";
String detailRoute = "/detail-route";
