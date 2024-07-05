import 'dart:typed_data';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  Future<Uint8List?> getProfileImage() async {
    var box = await Hive.openBox('profileBox');
    return box.get('profileImage');
  }

  Future<void> storeProfileImage(Uint8List imageBytes) async {
    var box = await Hive.openBox('profileBox');
    box.put('profileImage', imageBytes);
  }
}
