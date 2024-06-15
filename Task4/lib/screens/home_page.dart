import 'package:flutter/material.dart';
import 'package:task_4/my_widgets/bottom_buttons.dart';
import 'package:task_4/my_widgets/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "FinnSmart",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Welcome back",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    )),
                Icon(
                  Icons.lock,
                  size: 55,
                  color: Colors.grey[800],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 55,
        ),
        Expanded(
          child: Container(
            color: Colors.grey.shade300,
            child: Column(children: [
              const MyCard(account: "Berlin Account", balance: "\$412.018"),
              const SizedBox(
                height: 15,
              ),
              const MyCard(account: "New York Account", balance: "\$123.532"),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(16.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [   
                    BottomButtons(buttonText: "Expenses"),
                    BottomButtons(buttonText: "Transfer Funds",),
                    BottomButtons(buttonText: "Operations",),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
