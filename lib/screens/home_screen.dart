import 'dart:async';

import 'package:t25march/screens/shimmer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isDatabeingFetched = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {});

    setState(() {
      //isDatabeingFetched = false;
      Timer(const Duration(seconds: 10), () {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: isDatabeingFetched == false
              ? const ShimmerList()
              : ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    var Position;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: InkWell(
                          onTap: () {
                            print("Tapped");
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(Position.toString()),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )),
    );
  }
}
