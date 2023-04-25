import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CustomFadeInImageNetwork extends StatelessWidget {
  const CustomFadeInImageNetwork({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
  });

  final String url;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return FadeInImage.memoryNetwork(
      fit: fit,
      image: url,
      placeholder: kTransparentImage,
    );
  }
}
