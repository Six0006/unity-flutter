import 'package:flutter/material.dart';
import 'package:flutter_embed_unity/flutter_embed_unity.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      body: EmbedUnity(
        onMessageFromUnity: onMessageFromUnityCallback,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   c.increment();
          // });
          sendToUnity("GameMessenger", "SetText", "Hello World");
        },
        child: Text("${c.count}"),
      ),
    );
  }

  void onMessageFromUnityCallback(String data) {
    // setState(() {
    //   c.increment();
    // });
    print("Message from Unity is : $data");
    // c.increment();
  }
}
