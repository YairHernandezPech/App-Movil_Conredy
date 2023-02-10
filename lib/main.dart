import 'package:conredy/models/barraNotifications.dart';
import 'package:conredy/src/inicioSec.dart';
import 'package:flutter/material.dart';

/*Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();
  runApp(const inicioSec());
}*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();

  runApp(const inicioSec());
}
