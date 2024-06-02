import 'package:flutter/material.dart';
import './page2.dart';
import './main.dart';
import 'package:camera/camera.dart';

void main() {
  runApp(const MyApp3());
}

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PostureEstimationScreen(),
    );
  }
}

class PostureEstimationScreen extends StatelessWidget {
  const PostureEstimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // 将Row中的内容置中对齐
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, // 将Column中的内容置中对齐
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
                    // TODO: 实现打开相机的功能
                    Navigator.of(context).pop();
                    //Navigator.push(context, MaterialPageRoute(builder:(context)=>));
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