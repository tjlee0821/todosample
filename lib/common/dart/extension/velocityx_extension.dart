import 'package:flutter/material.dart';
import 'package:todosample/common/common.dart';

extension VxTextBuilderExtension on VxTextBuilder {
  Widget makeWithDefaultFont({Key? key}) {
    return textStyle(defaultFontStyle()).make();
  }
}

extension VxSelectableTextBuilderExtension on VxSelectableTextBuilder {
  Widget makeWithDefaultFont({Key? key}) {
    return textStyle(defaultFontStyle()).make();
  }
}
