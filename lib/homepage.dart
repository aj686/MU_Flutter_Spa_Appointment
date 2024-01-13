import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spa Appointment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpaFrontPage(),
    );
  }
}

class SpaFrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spa Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SpaServiceCard('Facial Spa Treatment'),
            SpaServiceCard('Body Spa'),
            SpaServiceCard('Hair Spa'),
            SpaServiceCard('Massage Treatment'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the registration page or perform any desired action
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

class SpaServiceCard extends StatelessWidget {
  final String serviceName;

  SpaServiceCard(this.serviceName);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(serviceName),
        // Add any additional details or images for each spa service if needed
      ),
    );
  }
}