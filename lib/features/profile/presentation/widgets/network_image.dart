import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/core/widgets/app_progress_indicator.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage({
    Key? key,
    required this.url,
    this.radius,
  }) : super(key: key);
  final String url;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 60,
      backgroundColor: Colors.white,
      child: CachedNetworkImage(
        imageUrl: url,
        placeholder: (context, url) => const SizedBox(
          width: 20,
          height: 20,
          child: AppProgressIndicator(),
        ),
        errorWidget: (context, url, error) => _placeholder(),
      ),
    );
  }

  Widget _placeholder() {
    return const Image(
        image: AssetImage('assets/images/user_placeholder.jpg'),fit: BoxFit.cover,);
  }
}
