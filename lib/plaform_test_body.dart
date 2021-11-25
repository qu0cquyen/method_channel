import 'package:flutter/material.dart';

class PlatformTestBody extends StatefulWidget {
  const PlatformTestBody({Key? key}) : super(key: key);

  @override
  _PlatformTestBodyState createState() => _PlatformTestBodyState();
}

class _PlatformTestBodyState extends State<PlatformTestBody> {
  String nativeMessage = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 18.0, top: 200.0),
            child: Text(
              'Tap the button to change your life!',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 23.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 102.0),
            child: ElevatedButton(
              child: const Text('Click Me'),
              onPressed: () => print(''),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 102.0),
            child: Text(
              nativeMessage,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 23.0),
            ),
          )
        ],
      ),
    );
  }
}
