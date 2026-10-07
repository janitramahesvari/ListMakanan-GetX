import 'package:flutter/material.dart';

class Loginclonetxtrichspan extends StatelessWidget {
  final String textspan1;
  final String textspan2;

  const Loginclonetxtrichspan({
    super.key,
    required this.textspan1,
    required this.textspan2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text.rich(
        //wadah
        TextSpan( //induk wadah
          children: [
            TextSpan(text: textspan1, style: TextStyle(fontSize: 15)), //child 1
            TextSpan( //child 2
              text: textspan2,
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
