import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


String userName = "";

String googleMapKey = "AIzaSyAAVIwZ394laxFANYK_1hUH0sPNA7e0UNo";

const CameraPosition googlePlexInitialPosition = CameraPosition(
  target: LatLng(15.767708304646638, -86.78965000142804),
  zoom: 14.4746,
);

StreamSubscription<Position>? positionStreamHomePage;
StreamSubscription<Position>? positionStreamNewTripPage;

int driverTripRequestTimeout = 20;

final audioPlayer = AssetsAudioPlayer();

Position? driverCurrentPosition;

String driverName = "";
String driverPhone = "";
String driverPhoto = "";
String carColor = "";
String carModel = "";
String carNumber = "";