import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lec_11_stack/first.dart';

class Stac extends StatefulWidget {
  const Stac({Key? key}) : super(key: key);

  @override
  State<Stac> createState() => _StacState();
}

class _StacState extends State<Stac> {
  @override
  Widget build(BuildContext context) {
    return
        //MaterialApp
        Scaffold(
      appBar: AppBar(
        title: Text("Motivational Shayri"),
        actions: [
          PopupMenuButton(
            child: Icon(Icons.more_vert_rounded),
            onSelected: (v) {
              print(v);
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                child: Text("My Profile"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: 2,
              ),
              PopupMenuItem(
                child: Text("About us"),
                value: 3,
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
            child: const Image(
              image: AssetImage(
                /*"https://pbs.twimg.com/media/E9YJOcmWQAczMrY.jpg"*/ "asset/i1.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 220,
                    width: 220,
                    color: Colors.red.withOpacity(0.1),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "\"मेहनत इतनी ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 4, 40, 7),
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          "खामोशी से करो कि",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 4, 40, 7),
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          "सफलता भी शोर मचा दे\"",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 4, 40, 7),
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    //margin: EdgeInsets.all(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FirstPage(),
                          ));
                        },
                        icon: const Icon(Icons.bubble_chart),
                        label: const Text("START"),
                        // child: Text("START"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            elevation: 20,
                            shadowColor: Colors.red,
                            side: const BorderSide(
                                color: Colors.black,
                                width: 2) //elevated btton background color
                            ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          //exit(0);
                          SystemNavigator.pop();
                        },
                        icon: Icon(Icons.close),
                        label: Text("Exit"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            elevation: 20,
                            shadowColor: Colors.green,
                            side: const BorderSide(
                                color: Colors.black,
                                width: 2) //elevated btton background color
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 400,
          ),
          //Center(
          // child: ElevatedButton.icon(
          //   onPressed: () {},
          //   icon:const  Icon(Icons.bubble_chart),
          //   label: const Text("START"),

          //   // child: Text("START"),
          // ),
          //)
        ]),
      ),
    );
    /*return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Container(
          child: Stack(
            clipBehavior:Clip.none,
            children:[Container(

            )

            ]
          ),
        ),
      )
    );*/
  }
}
