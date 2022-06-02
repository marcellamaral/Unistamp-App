import 'package:flutter/material.dart';

class CustomImageNetwork extends StatelessWidget {
  final String url;
  const CustomImageNetwork({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
      loadingBuilder: (context, exception, stackTrack) {
        if (stackTrack == null) {
          return exception;
        } else {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 1,
            ),
          );
        }
      },
    );
  }
}
