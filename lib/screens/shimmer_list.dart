import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerList extends StatefulWidget {
  const ShimmerList({super.key});

  @override
  State<ShimmerList> createState() => _ShimmerListState();
}

class _ShimmerListState extends State<ShimmerList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Shimmer.fromColors(
              child: ShimmerLayout(),
              baseColor: Colors.grey.withOpacity(0.5),
              highlightColor: Colors.white),
        );
      },
    ));
  }
}

class ShimmerLayout extends StatefulWidget {
  const ShimmerLayout({super.key});

  @override
  State<ShimmerLayout> createState() => _ShimmerLayoutState();
}

class _ShimmerLayoutState extends State<ShimmerLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // here
                height: 15,
                width: MediaQuery.of(context).size.width - 150,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 6,
              ),

              Container(
                // here
                height: 15,
                width: MediaQuery.of(context).size.width - 150,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 6,
              ),
              // here
              Container(
                // here
                height: 15,
                width: MediaQuery.of(context).size.width - 250,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 6,
              ),
            ],
          )
        ],
      ),
    );
  }
}
