import 'package:flutter/material.dart';
import '../../../../../../core/utils/assets.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageurl});
  final String imageurl ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(16),
          color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageurl))
        ),
    
      ),
    );
  }
}