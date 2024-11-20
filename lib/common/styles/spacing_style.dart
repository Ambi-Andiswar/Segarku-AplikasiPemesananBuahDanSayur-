import 'package:flutter/widgets.dart';

import '../../utils/constants/size.dart';

class SSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: SSizes.appBarHeight,
    left: SSizes.defaultSpace,
    bottom: SSizes.defaultSpace,
    right: SSizes.defaultSpace,
  );
}