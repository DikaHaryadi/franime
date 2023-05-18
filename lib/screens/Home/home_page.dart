import 'package:flutter/material.dart';
import 'package:franime/screens/ongoing/ongoing_anime.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: OngoingAnime(),
        ),
      ),
    );
  }
}
