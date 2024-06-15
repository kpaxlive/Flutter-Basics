import 'package:flutter/material.dart';

class DialogButton extends StatefulWidget {
  const DialogButton({super.key});

  @override
  State<DialogButton> createState() => _DialogButtonState();
}

class _DialogButtonState extends State<DialogButton> {
  final TextEditingController _alertController = TextEditingController();
  final ValueNotifier codeNotifier = ValueNotifier(false);
  final String password = '1234';
  bool wrongCode = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => StatefulBuilder(
                builder: (context,setState) {
                  return AlertDialog(
                        title: const Text("Enter The Code"),
                        content: ValueListenableBuilder(
                          valueListenable: codeNotifier,
                          builder: (BuildContext context, code, Widget? child) {
                            return TextField(
                              controller: _alertController,
                              decoration: InputDecoration(
                                errorText: wrongCode ? 'You must enter a code' : null,
                                hintText: 'Enter here',
                                border: const OutlineInputBorder(),
                              ),
                            );
                          },
                        ),
                        actions: [
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  _decodeControl();
                                },
                                child: const Text("Enter"),
                              ),
                            ],
                          )
                        ],
                      );
                }
              ));
        },
        child: const Text("Decrypt"));
  }

  void _decodeControl() {
    if (_alertController.text.trim() != '') {
      Navigator.pop(context);
      wrongCode = false;
      codeNotifier.value = false;
      Navigator.popAndPushNamed(context, '/decodePage');
    } else {
      setState(() {
        wrongCode = true;
        codeNotifier.value = true;
      });
    }
  }
}
