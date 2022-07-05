import 'package:flutter/material.dart';

class ExhibitCard extends StatelessWidget {
  final String image;
  final String title;
  const ExhibitCard({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: Image.network(image, fit: BoxFit.cover, errorBuilder:
                (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
              return Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/330px-No-Image-Placeholder.svg.png?20200912122019');
            }),
          ),
          Positioned(
            left: 40,
            child: Container(
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
