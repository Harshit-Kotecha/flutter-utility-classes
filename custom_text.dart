import 'package:flutter/cupertino.dart';

// This class is the common class for text only.

class CustomText extends StatelessWidget {
  final String _text;
  final TextStyle _textStyle;
  final TextAlign textAlign;
  final TextOverflow textOverflow;
  final int? maxLines;

  const CustomText(
    this._text,
    this._textStyle, {
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.textOverflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      softWrap: true,
      style: _textStyle,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}
