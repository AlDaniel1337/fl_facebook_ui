import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/facebook_ui/facebook_ui.page.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => const MyApp(),
      enabled: !kReleaseMode,
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FacebookUiPage(),

      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}