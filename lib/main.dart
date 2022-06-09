import 'package:auth_base_3/features/user/presentation/plain/plain_sign_in.dart';
import 'package:auth_base_3/features/user/presentation/state_management/all_dizi_bindings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'injection_container.dart' as di;

//start the server
//start C:\API
//json-server --watch dizi_ayraci_inner.json

// flutter run -d chrome --web-hostname localhost --web-port 5000 --no-sound-null-safety

bool USE_FIRESTORE_EMULATOR = false;
final firestoreManager = FirebaseFirestore.instance;

Future<void> main() async {
  await di.init();
  AllUserBindings().dependencies();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if (USE_FIRESTORE_EMULATOR) {
    FirebaseFirestore.instance.settings = const Settings(
      host: 'localhost:8080',
      sslEnabled: false,
      persistenceEnabled: false,
    );
  }

  // runApp(FirestoreExampleApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _firestore = FirebaseFirestore.instance;

    var colRef = _firestore.collection('books');

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Scaffold(
      //   body: Center(
      //     child: Text("${colRef.id}"),
      //   ),
      // ),
      home: PlainSignIn(),
    );
  }
}
