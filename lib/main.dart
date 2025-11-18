import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:meals/screen_widgets/tabs.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(245, 135, 51, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme().apply().copyWith(
    titleLarge: GoogleFonts.lato(fontSize: 17, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.lato(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w500),
    bodyLarge: GoogleFonts.lato(fontSize: 12),
    bodyMedium: GoogleFonts.lato(fontSize: 10),
    bodySmall: GoogleFonts.lato(fontSize: 9),
  ),
);

void main() {
  runApp(ProviderScope(child: const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const TabsScreen(),
    );
  }
}
