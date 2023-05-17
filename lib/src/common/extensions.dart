import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

extension BuildContextExt on BuildContext {
  /// Application localization.
  S get intl => S.of(this);
}
