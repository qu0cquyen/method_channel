import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformTestBody extends StatefulWidget {
  const PlatformTestBody({Key? key}) : super(key: key);

  @override
  _PlatformTestBodyState createState() => _PlatformTestBodyState();
}

class _PlatformTestBodyState extends State<PlatformTestBody> {
  static const platformMethodChannel =
      MethodChannel('samples.flutter.dev/battery');

  var batteryLevel = 'Unknown battery level';

  Future<void> _getBatteryLevel() async {
    late String batLevel;

    try {
      final int result =
          await platformMethodChannel.invokeMethod('getBatteryLevel');
      batLevel = 'Battery level at $result%';
    } on PlatformException catch (e) {
      batLevel = 'Failed to get battery level: ${e.message}.';
    }

    setState(() {
      batteryLevel = batLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Get Battery Level'),
              onPressed: _getBatteryLevel,
            ),
            Text(batteryLevel),
          ],
        ),
      ),
    );
  }
}
