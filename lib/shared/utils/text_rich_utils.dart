import 'package:flutter/material.dart';

String markBold(String text, String wordToBold) {
  return text.replaceAll(wordToBold, '**$wordToBold**');
}

TextSpan createTextSpan(String text, TextStyle style, TextStyle boldStyle) {
  const boldMarker = '**';
  List<TextSpan> spans = [];
  int start = 0;

  while (true) {
    final startIndex = text.indexOf(boldMarker, start);
    if (startIndex == -1) {
      spans.add(TextSpan(text: text.substring(start), style: style));
      break;
    }

    final endIndex = text.indexOf(boldMarker, startIndex + boldMarker.length);
    if (endIndex == -1) {
      spans.add(TextSpan(text: text.substring(start), style: style));
      break;
    }

    if (startIndex > start) {
      spans
          .add(TextSpan(text: text.substring(start, startIndex), style: style));
    }

    spans.add(TextSpan(
        text: text.substring(startIndex + boldMarker.length, endIndex),
        style: boldStyle));
    start = endIndex + boldMarker.length;
  }

  return TextSpan(children: spans);
}
