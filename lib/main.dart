import 'package:demo_registation/pages/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Workshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Registeration Pad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print('Opps... ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              body: TabBarView(
                children: [
                  RegisterationPage(),
                  Container(),
                ],
              ),
              backgroundColor: Colors.blue,
              bottomNavigationBar: TabBar(
                tabs: [
                  Tab(
                    text: 'หน้าลงทะเบียน',
                  ),
                  Tab(
                    text: 'รายชื่อ',
                  )
                ],
              ),
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
