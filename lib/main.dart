import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/presentation/providers/discover_provider.dart';
import 'package:flutter_tiktok_app/presentation/screens/discover/discover_screen.dart';
import 'package:flutter_tiktok_app/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false, //Esto sirve para que ejecute sin pereza y dispare de una el notificador
          create: (_) => DiscoverProvider()..loadNextPage(),
        ),
      ],
      child: MaterialApp(
          title: 'TokTik',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
