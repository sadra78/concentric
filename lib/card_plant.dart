import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CardPlantData {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;

  const CardPlantData(
      {required this.title,
      required this.subtitle,
      required this.image,
      required this.backgroundColor,
      required this.titleColor,
      required this.subtitleColor,
      required this.background});
}

class CardPlant extends StatelessWidget {
  const CardPlant({required this.data, Key? key}) : super(key: key);

  final CardPlantData data;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      if (data.background != null) data.background!,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            Flexible(flex: 20,child: Image(image: data.image,fit: BoxFit.fill,)),
            const Spacer(
              flex: 1,
            ),
            Text(
              data.title.toUpperCase(),
              style: TextStyle(
                  color: data.titleColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
              maxLines: 1,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              data.subtitle,
              style: TextStyle(color: data.subtitleColor, fontSize: 16),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            const Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    ]);
  }
}
