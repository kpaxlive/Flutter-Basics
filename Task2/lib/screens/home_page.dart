import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkBoxValue = false;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final Future<SharedPreferences> _prefs =  SharedPreferences.getInstance();


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CheckboxListTile(
                  value: checkBoxValue,
                  onChanged: _checkBoxChange,
                  title: const Text('Have you been there before?'),
                  ),
                  const SizedBox(height: 25,),
                const Text("How many times have you been there?"),
                TextField(
                  controller: _controller2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  
                ),
                const SizedBox(height: 25,),
                const Text("Where do you wanna go?"),
                 TextField(
                  controller: _controller1,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15,),

                ElevatedButton(onPressed: _saveData, child: const Text("Save")),
                const SizedBox(height: 25,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

void loadData() async {
  final SharedPreferences prefs = await _prefs;
  setState(() {
    _controller1.text = prefs.getString('place') ?? 'detroit';
    checkBoxValue = prefs.getBool("check") ?? false;
    _controller2.text = (prefs.getInt('count') ?? 0).toString();
  });
}

  void _checkBoxChange(bool? value) async{
    final SharedPreferences prefs = await _prefs;
    setState(() {
      checkBoxValue = !checkBoxValue;
      prefs.setBool("check", checkBoxValue);
    });
  }


  void _saveData() async
  {
    final SharedPreferences prefs = await _prefs;
    prefs.setBool("check", checkBoxValue);
    prefs.setString('place', _controller1.text);
    if(_controller2.text == ''){
      _controller2.text = '0';
    }
    prefs.setInt('count', int.parse(_controller2.text));
  }
}
