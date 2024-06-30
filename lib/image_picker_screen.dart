import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  // This is the file that will be used to store the image
  File? _image;

  // This is the image picker
  final _picker = ImagePicker();

  Future<void> _openImagePicker(ImageSource source) async {
    // final XFile? pickedImage = await _picker.pickImage(source: source);
    // if (pickedImage != null) {
    //   setState(() {
    //     _image = File(pickedImage.path);
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Screen'),
      ),
      body: Column(children: [
        const SizedBox(height: 35),
        Center(
          child: ElevatedButton(
            onPressed: () => _openImagePicker(ImageSource.gallery),
            child: const Text('Select An Image from Gallery'),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            onPressed: () => _openImagePicker(ImageSource.camera),
            child: const Text('Select An Image from Camera'),
          ),
        ),
        const SizedBox(height: 35),
        // The picked image will be displayed here
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 300,
          color: Colors.grey[300],
          child: const Text('Please select an image'),
          // child: _image != null
          //     ? (kIsWeb ? Image.network(_image!.path, fit: BoxFit.cover) : Image.file(_image!, fit: BoxFit.cover))
          //     : const Text('Please select an image'),
        )
      ]),
    );
  }
}
