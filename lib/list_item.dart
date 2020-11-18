import 'package:flutter/material.dart';

/* 
 * privateなメンバ変数はコンストラクタ this._xxxx とできない
*/
// class ListItem {
//   final String title;
//   final String thumbnailUrl;
//   final String _text;
//   final String _author;
//   String get body => _text + " by " + _author;
//   ListItem(
//       {@required this.title,
//       @required this.thumbnailUrl,
//       @required this._text,
//       @required this._author});
// }

/* 
 * また以下のようにコンストラクタ内で初期化しようとするとfinalを外さないといけない
*/
// class ListItem {
//   final String title;
//   final String thumbnailUrl;
//   final String _text;
//   final String _author;
//   String get body => _text + " by " + _author;
//   ListItem(
//       {@required this.title,
//       @required this.thumbnailUrl,
//       @required String text,
//       @required String author}) {
//     _text = text;
//     _author = text;
//   }
// }

// class ListItem {
//   final String title;
//   final String thumbnailUrl;
//   final String _text;
//   final String _author;
//   String get body => _text + " by " + _author;
//   ListItem(
//       {@required this.title,
//       @required this.thumbnailUrl,
//       @required String text,
//       @required String author})
//       : _text = text,
//         _author = author;
// }

// もっというとbodyも初期化時に利用する変数にしちゃってもいいかも
class ListItem {
  final String title;
  final String thumbnailUrl;
  final String body;
  ListItem(
      {@required this.title,
      @required this.thumbnailUrl,
      @required String text,
      @required String author})
      : body = text + " by " + author;
}
