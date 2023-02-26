import 'package:flutter/material.dart';
import 'package:flutter_responsive_design1/controllers/menu_controller.dart';
import 'package:flutter_responsive_design1/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

void main() {
  initializeDateFormatting('pt_BR', null).then((_) => runApp(const MyApp()));
}

/// Let's start to make responsive website
/// First make app responsive class

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuController()),
        ],
        child: const HomePage(),
      ),
    );
  }
}
