import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'modules/feed/feed_page.dart';
import 'screens/welcome_screen.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //lineas a quitar para que no entre siempre como recien logueado
  await FirebaseAuth.instance.signOut(); // <- cerrar sesión
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('welcomeShown'); // <- eliminar flag de bienvenida

  final bool welcomeShown = prefs.getBool('welcomeShown') ?? false;
  final user = FirebaseAuth.instance.currentUser;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: user != null
        ? (welcomeShown ? FeedPage() : WelcomeScreen(user: user))
        : SplashScreen(),
  ));
}

