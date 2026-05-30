import 'package:flutter/material.dart';
import 'package:travellappg15/examples/carousel_page.dart';
import 'package:travellappg15/examples/shared_prefences_page.dart';
import 'package:travellappg15/pages/home_page.dart';
import 'package:travellappg15/pages/welcome_page.dart';

void main() {
  runApp(
    MaterialApp(home: SharedPrefencesPage(), debugShowCheckedModeBanner: false),
  );
}
