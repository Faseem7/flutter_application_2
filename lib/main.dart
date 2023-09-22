import 'package:flutter/material.dart';

void main() {
  runApp(const Destini());
}

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 27, 27),
        body: StoryPage(),
      ),
    );
  }
}

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
      constraints: BoxConstraints.expand(),
      
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  'THE TEXT GOES HERE',
                  style: TextStyle(fontSize: 30, 
                  color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 13, 190, 182)),
                child: Text(
                  'Choice 1',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 25, 190, 121)),
                child: Text(
                  'Choice 2',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
