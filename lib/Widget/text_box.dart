import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({super.key, required this.title, this.maxline, this.fs, this.fw, this.color});
  final String title;
  final int? maxline;
  final double? fs;
  final FontWeight? fw;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ,
      maxLines: maxline,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: fw,
        fontSize: fs,
        color: color,
      ),
    );
  }
}
