
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mak_past_papers/model/pdf_provider.dart';
import 'package:mak_past_papers/screens/main_screen.dart';
import 'package:provider/provider.dart';

 main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
     MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(context)=>pdfprovider(),),
        
      ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: "Poppins"),
      home: const MainScreen(),
    )
     );
  }
}
