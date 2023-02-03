import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fmsnepal/firebase_options.dart';
import 'package:fmsnepal/views/login_view.dart';
import 'package:fmsnepal/views/register_view.dart';
import 'package:fmsnepal/views/verify_email_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/login/': ((context) => const Loginview()),
        '/register/': ((context) => const Registerview()),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sign In')),
        body: FutureBuilder(
          future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
          ),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                final user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                  if (user.emailVerified) {
                    return Text('Email Verified');
                  } else {
                    return const VerifyEmailView();
                  }
                } else {
                  return const Text('Done');
                }
              default:
                return const CircularProgressIndicator();
            }
          },
        ));
  }
}
