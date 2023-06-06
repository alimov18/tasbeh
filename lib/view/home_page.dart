import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int hisob = 0;
  String zikr = "Subhanalloh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
        title: const Center(
          child: Text("Tasbeh"),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Column(
              children: [
                const Text(
                  "Zikrlar soni:",
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  hisob.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
              ],
            )),
            const SizedBox(
              height: 150,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  hisob++;
                  if (hisob == 33) {
                    zikr = "Alhamdulillah";
                    hisob++;
                  } else if (hisob == 66) {
                    zikr = "La Ilha Illalloh";
                    hisob++;
                  } else if (hisob == 99) {
                    zikr = "Subhanalloh";
                    hisob = 0;
                  }
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    zikr,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
