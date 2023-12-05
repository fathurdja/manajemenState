import 'package:flutter/material.dart';
import 'package:flutter_application_9/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint("Membuild Ulang");
    return Scaffold(
      appBar: AppBar(
        title: const Text("halaman StateFull"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("$number"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: const Text("increement"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Page2()));
          },
          label: const Text("ke Page2")),
    );
  }
}
