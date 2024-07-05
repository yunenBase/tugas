import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tugas/Services/hive_services.dart';
import '/Constant/Theme.dart';

class ImagePickerPage extends StatefulWidget {
  final void Function(Uint8List) onImagePicked;

  const ImagePickerPage({Key? key, required this.onImagePicked}) : super(key: key);

  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  Uint8List? _imageBytes;
  final ImagePicker _imagePicker = ImagePicker();

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
            if (_imageBytes != null) ...[
              Image.memory(_imageBytes!),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  widget.onImagePicked(_imageBytes!);
                  Navigator.of(context).pop();
                },
                child: Text('Save Image'),
              ),
            ] else ...[
              Text('No image selected'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _pickImage().then((imageBytes) {
                    if (imageBytes != null) {
                      setState(() {
                        _imageBytes = imageBytes;
                      });
                    }
                  });
                },
                child: Text('Select Image'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<Uint8List?> _pickImage() async {
    XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    return await image.readAsBytes();
  }
}
