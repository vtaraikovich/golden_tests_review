/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/colors.xml
  String get colors => 'assets/colors/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_back.svg
  SvgGenImage get arrowBack => const SvgGenImage('assets/icons/arrow_back.svg');

  /// File path: assets/icons/clock.svg
  SvgGenImage get clock => const SvgGenImage('assets/icons/clock.svg');

  /// File path: assets/icons/coffee.svg
  SvgGenImage get coffee => const SvgGenImage('assets/icons/coffee.svg');

  /// File path: assets/icons/fire.svg
  SvgGenImage get fire => const SvgGenImage('assets/icons/fire.svg');

  /// File path: assets/icons/heart.svg
  SvgGenImage get heart => const SvgGenImage('assets/icons/heart.svg');

  /// List of all assets
  List<SvgGenImage> get values => [arrowBack, clock, coffee, fire, heart];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cappuccino.jpg
  AssetGenImage get cappuccino =>
      const AssetGenImage('assets/images/cappuccino.jpg');

  /// File path: assets/images/ice_coffee.jpg
  AssetGenImage get iceCoffee =>
      const AssetGenImage('assets/images/ice_coffee.jpg');

  /// File path: assets/images/irish_coffee.jpg
  AssetGenImage get irishCoffee =>
      const AssetGenImage('assets/images/irish_coffee.jpg');

  /// File path: assets/images/macchiato.webp
  AssetGenImage get macchiato =>
      const AssetGenImage('assets/images/macchiato.webp');

  /// File path: assets/images/mocha.jpg
  AssetGenImage get mocha => const AssetGenImage('assets/images/mocha.jpg');

  /// File path: assets/images/warning.png
  AssetGenImage get warning => const AssetGenImage('assets/images/warning.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [cappuccino, iceCoffee, irishCoffee, macchiato, mocha, warning];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
