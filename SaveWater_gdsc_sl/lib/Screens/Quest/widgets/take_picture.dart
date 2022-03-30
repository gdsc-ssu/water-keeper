import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:savewater_gdsc_sl/constants.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/widgets/custom_buy_button.dart' as button;

class TakePictureButton extends StatefulWidget {
  @override
  State<TakePictureButton> createState() => _TakePictureButtonState();
}

class _TakePictureButtonState extends State<TakePictureButton> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      //final imageTemporary = File(image.path);
      final imagePremanently = await saveImagePermanently(image.path);
      setState(() {
        this.image = imagePremanently;
      });
    } on PlatformException catch(e) {
      print("Failed to pick Image: $e");
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kPrimaryLightColor,
        ),
        height: 230,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildButton(
                      title: 'Pick Gallery',
                      icon: Icons.image_outlined,
                      onClicked: () => pickImage(ImageSource.gallery)
                  ),
                  Spacer(),
                  buildButton(
                      title: 'Pick Camera',
                      icon: Icons.camera_alt_outlined,
                      onClicked: () => pickImage(ImageSource.camera)
                  ),
                ],
              ),
            ),
            image != null ?
            Image.file(
              image!,
              width: 160,
              height: 160,
              fit: BoxFit.cover,)
            : Text(
                'Take Picture of Task',
                style: TextStyle(
                    height: 1,
                    fontWeight:
                    FontWeight.bold
                )
              ),
            // const SizedBox(height: 10),
            // Text(
            //   'Image Picker',
            //   style: TextStyle(
            //     fontSize: 48,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildButton({
    required String title,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          //minimumSize: Size.fromHeight(56),
          primary: Colors.white,
          onPrimary: Colors.black,
          textStyle: TextStyle(fontSize: 20),
        ),
        onPressed: onClicked,
        child: Row(
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 16),
            Text(title, style: TextStyle(fontSize: 15)),
          ],
        ),
      );
}
