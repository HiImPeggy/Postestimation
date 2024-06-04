import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import './open_camera.dart';
import 'upload_img.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostureEstimationScreen(camera: camera),
    );
  }
}

class PostureEstimationScreen extends StatelessWidget {
  final CameraDescription camera;

  const PostureEstimationScreen({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Estimate Your Posture',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                Image.asset(
                  'assets/images.png', // 这里是你上传的图片文件路径
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Real time estimation\nor\nEstimate posture in pictures',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp2(camera: camera),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Turn on camera'),
                ),
                const SizedBox(height: 25),
                
                ElevatedButton(
                  onPressed: () {
                    // TODO: 实现上传图片的功能
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>MyApp3()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Upload pictures'),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}