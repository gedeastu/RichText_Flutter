import 'package:flutter/material.dart';

void main(){
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RichTextWidget(),
    );
  }
}

class RichTextWidget extends StatefulWidget {
  const RichTextWidget({super.key});

  @override
  State<RichTextWidget> createState() => _RichTextWidgetState();
}

class _RichTextWidgetState extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.amber,fontSize: 30),
            children: <TextSpan>[
              TextSpan(text: "To the", style: TextStyle(color: Colors.amber)),
              TextSpan(text: " moon ", style: TextStyle(color: Colors.black)),
              TextSpan(text: "Beyond!", style: TextStyle(color: Color.fromARGB(255, 137, 123, 81),fontWeight: FontWeight.bold)),
            ]
          ),
        )
      ),
    );
  }
}