import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../modules/feed/feed_page.dart';

class WelcomeScreen extends StatefulWidget {
  final User? user;
  const WelcomeScreen({super.key, this.user});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }

  Future<void> _navigateToNext() async {
    print("Esperando 3 segundos...");
    await Future.delayed(const Duration(seconds: 3));
    print("3 segundos pasaron, accediendo a SharedPreferences...");

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('welcomeShown', true);
    print("Flag 'welcomeShown' guardado");

    if (!mounted) {
      print("Contexto desmontado (mounted == false), no se puede navegar");
      return;
    }

    setState(() {
      _isLoading = false;
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const FeedPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final displayName = widget.user?.displayName ?? "Usuario";
    final email = widget.user?.email ?? "";

    return Scaffold(
      appBar: AppBar(title: const Text("Bienvenido")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // <- importante
          children: [
            if (widget.user?.photoURL != null)
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.user!.photoURL!),
              ),
            const SizedBox(height: 16),
            Text("Hola, $displayName", style: const TextStyle(fontSize: 20)),
            Text(email, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 32),
            if (_isLoading) ...[
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              const Text("Iniciando sesión...", style: TextStyle(color: Colors.grey)),
            ],
            if (!_isLoading)
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const FeedPage()),
                  );
                },
                child: const Text('Comenzar'),
              ),
          ],
        ),
      ),
    );
  }
}
