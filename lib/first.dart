import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //List<String> shayri = ["", "", "", "", "", "", "", "", "", ""];
  List<String> im = [
    "asset/i1.jpg",
    "asset/i2.jpg",
    "asset/i3.jpg",
    "asset/i4.jpg",
    "asset/i5.jpg",
    "asset/i6.jpg",
    "asset/i7.jpg",
    "asset/i3.jpg",
    "asset/i4.jpg",
    "asset/i5.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Motivational Shayri")),
      bottomNavigationBar: const BottomAppBar(),
      body: Container(
        child: GridView.builder(
          itemCount: im.length,
          itemBuilder: (context, index) {
            return GridTile(
              child: Container(
                child: Card(
                  elevation: 10,
                  child: Image(
                    image: AssetImage(im[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
        ),
      ),
      //  body: GridView.count(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 2,
      //   mainAxisSpacing: 0.5,
      //   childAspectRatio: 1,
      //   padding: const EdgeInsets.all(10),
      //   children: im
      //       .map(
      //         (e) => Stack(
      //           children: const [
      //             Card(
      //               color: Colors.red,
      //               child: Center(
      //                 child: Image(
      //                   image: AssetImage(
      //                     "asset/i4.jpg", //fit: BoxFit.cover,
      //                   ),
      //                   fit: BoxFit.fitHeight,
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       )
      //       .toList(),
      // ),
    );
  }
}
