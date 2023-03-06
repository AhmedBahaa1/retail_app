import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

import '../network/network/cashe_helper.dart';

 Color defaultColor = HexColor('972929');

// void SignOut(context) {
//   CasheHelper.removeData(key: 'token').then((value) {
//     if (value) {
//       navigatorAndFinish(context, ShopLoginScreen());
//     }
//   });
// }

void printFullText(String text) {
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}
