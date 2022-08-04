import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PraStack extends StatefulWidget {
  const PraStack({Key? key}) : super(key: key);

  @override
  State<PraStack> createState() => _PraStackState();
}

class _PraStackState extends State<PraStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              height: MediaQuery.of(context).size.height,
              child: const Image(
                image: AssetImage("asset/i1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              height: 120,
              child: Container(
                color: Colors.red,
                height: 120,
                width: 120,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                height: 100,
                width: 100,
                //color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}