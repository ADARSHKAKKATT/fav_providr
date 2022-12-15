import 'package:fav_providr/provider/fav_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fav(),
    );*/
    ChangeNotifierProvider(create: (context)=>Favprovider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Fav(),
      ),
    );
  }
}


