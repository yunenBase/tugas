import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:tugas/Constant/Theme.dart';
import 'package:tugas/screen/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preference = await SharedPreferences.getInstance();
  //initScreen = preference.getInt('initScreen', 1);
  await preference.setInt('initScreen', 1);
  await Hive.initFlutter();

  var box = await Hive.openBox('data');

  runApp(MyApp());
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
      builder: (context, widget) {
        return GetMaterialApp(
          title: "Food App",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(scaffoldBackgroundColor: primaryColor),
          home: SplashScreen(),
        );
      },
    );
  }
}



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
