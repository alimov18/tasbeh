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
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/back.jpg'), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Column(
                  children: [
                    const Text(
                      "Zikrlar soni:",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      hisob.toString(),
                      style: const TextStyle(fontSize: 55, color: Colors.white),
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
                        style: TextStyle(fontSize: 30, color: Colors.white),
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
        ),
      ),
    );
  }
}
