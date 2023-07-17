import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Icon(
            Icons.mail_outline,
            size: 34,
          ),
          const SizedBox(height: 10),
          const Text(
            "Welcome your supporters",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            """
  Send a private message to kick off an
intimate relationship with your top fans""",
          style: TextStyle(
            color: Colors.grey
          ),
          ),
          const SizedBox(height: 10),
          newMessageButton()
        ],
      ),
    );
  }

  Widget newMessageButton(){
    return MaterialButton(
      onPressed: (){},
      color: Colors.grey.shade200,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: const Text(
        " + New message",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      );
  }
}
