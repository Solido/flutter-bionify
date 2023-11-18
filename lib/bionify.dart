import 'package:flutter/material.dart';

/*
Format any content with fast reading guidance
 */
class Bionify extends StatelessWidget {
  final String content;
  final double ratio;
  final TextStyle markStyle;
  final TextStyle basicStyle;

  const Bionify(
      {super.key,
      required this.content,
      this.ratio = .4,
      this.markStyle = const TextStyle(fontWeight: FontWeight.bold),
      this.basicStyle = const TextStyle()});

  @override
  build(context) {
    final display = content.split(' ').map(renderSpan).toList(growable: false);

    return RichText(text: TextSpan(children: display));
  }

  InlineSpan renderSpan(String content) {
    if (content.length == 1) TextSpan(text: '$content ', style: markStyle);

    final sub = (content.length * ratio).ceil();

    return TextSpan(children: [
      TextSpan(text: content.substring(0, sub), style: markStyle),
      TextSpan(text: '${content.substring(sub, content.length)} ', style: basicStyle)
    ]);
  }
}
