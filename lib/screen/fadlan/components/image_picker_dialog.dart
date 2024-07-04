import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../Constant/Theme.dart';
import '/Services/hive_services.dart'; // Import your Hive service

class ImagePickerPage extends StatelessWidget {
  final void Function(Uint8List imageBytes) onImageSelected;
  final ImagePicker _imagePicker = ImagePicker();

  ImagePickerPage({Key? key, required this.onImageSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Upload your best photo!',
              style: body1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final XFile? image =
                await _imagePicker.pickImage(source: ImageSource.gallery);
                if (image == null) return;

                Uint8List imageBytes = await image.readAsBytes();
                onImageSelected(imageBytes);
                Navigator.pop(context); // Close the dialog after selecting image
              },
              child: Text('Select Image'),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () async {
                final XFile? image =
                await _imagePicker.pickImage(source: ImageSource.camera);
                if (image == null) return;

                Uint8List imageBytes = await image.readAsBytes();
                onImageSelected(imageBytes);
                Navigator.pop(context); // Close the dialog after selecting image
              },
              child: Text('Take Photo'),
            ),
          ],
        ),
      ),
    );
  }
}
