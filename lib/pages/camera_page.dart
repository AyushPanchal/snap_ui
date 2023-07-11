import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:snap/main.dart';
import 'package:snap/theme/my_icons.dart';
import 'package:snap/widgets/custom_icon_button.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _cameraController;

  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(cameras[0], ResolutionPreset.max);
    _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.maxFinite,
          child: Column(
            children: [
              Container(
                color: Colors.black,
                child: Row(
                  children: [
                    CustomIconButton(
                      iconBGColor: Colors.transparent,
                      child: Image.asset(
                        'assets/boy.png',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CameraPreview(
                  _cameraController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
