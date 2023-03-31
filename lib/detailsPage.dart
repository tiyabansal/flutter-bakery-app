import 'package:bakeryapp/models/data.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final Data sweet;
  const DetailsPage({super.key, required this.sweet});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.sweet.dessertName,
        ),
      ),
      body: Column(
        children: [
          /// The source and destination widget should be wrapped with Hero widget.
          /// Hero widget takes a tag as a parameter which should be unique.
          /// The source and destination should have the same tag value
          Hero(
            tag: widget.sweet.dessertName, //London
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  widget.sweet.dessertImage,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.sweet.dessertDescription,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
