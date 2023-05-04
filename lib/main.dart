import 'package:flutter/material.dart';
import 'package:testnotifications/local_notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotificationService().initializeService;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page!'),
        backgroundColor: Colors.green.shade200,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => LocalNotificationService().showNotification(),
        child: const Icon(Icons.bubble_chart_rounded),
      ),
    );
  }
}
