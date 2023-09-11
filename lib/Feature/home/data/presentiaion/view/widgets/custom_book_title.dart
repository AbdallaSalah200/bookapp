import 'package:flutter/material.dart';
import '../../../../../../core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageurl});
  final String imageurl ;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: CachedNetworkImage(
          placeholder: (context, url) => const  Center(child: CircularProgressIndicator()),
          fit: BoxFit.fill,
          imageUrl : imageurl ,
          errorWidget: (context, url, error) => const  Icon(Icons.error),
        )
      ),
    );
  }
}