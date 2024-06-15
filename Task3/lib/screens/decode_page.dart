import 'dart:async';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:flutter/material.dart';

class DecodePage extends StatefulWidget {
  const DecodePage({super.key});

  @override
  State<DecodePage> createState() => _DecodePageState();
}

class _DecodePageState extends State<DecodePage> {
  int countdown = 3;
  bool showCountdown = true;
  bool showNotification = false;
  bool showText = false;

  String decodeText = "We decoding your code...";
  late Timer timer;

  @override
  void initState() {
    _startCountDown();
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showNotification)
                ElegantNotification.success(
                  width: MediaQuery.of(context).size.width,
                  animation: AnimationType.fromRight,
                  position: Alignment.topRight,
                  description: const Text("Your Code is 'NeonAcademy'"),
                ),
              Column(
                children: [
                  if (showCountdown)
                    Text(
                      countdown.toString(),
                      style: const TextStyle(
                        fontSize: 55,
                      ),
                    ),
                  Text(
                    decodeText,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _startCountDown() {
    showCountdown = true;
    const onesec = Duration(seconds: 1);
    timer = Timer.periodic(onesec, (Timer timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          decodeText = "Your code decoded!";
          showCountdown = false;
          timer.cancel();
          showNotification = true;
          Future.delayed(const Duration(seconds: 3), () {
            Navigator.pushReplacementNamed(context, '/home');
          });
        }
      });
    });
  }
}
