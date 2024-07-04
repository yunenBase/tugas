import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/Constant/Theme.dart';

import '/screen/restaurantView.dart';
import '/screen/fadlan/edit_profile.dart';

int? initScreen;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preference = await SharedPreferences.getInstance();
  //initScreen = preference.getInt('initScreen', 1);
  await preference.setInt('initScreen', 1);
  await Hive.initFlutter();

  var box = await Hive.openBox('data');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, widget){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: primaryColor
          ),
          home: editProfil(),
        );
      },
    );
  }
}