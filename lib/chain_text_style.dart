library chain_text_style;

import 'package:flutter/material.dart';

/// Chain Text Style
class ChainTS {
  /// FontColor - example: ChainTS.c(Colors.black).st
  static ChainTS c(Color color) => ChainTS(color: color);

  /// FontSize - example: ChainTS.s(12).st
  static ChainTS s(double size) => ChainTS(fontSize: size);

  /// FontWeight
  ChainTS get fw3 => setFontWeight(FontWeight.w300);
  ChainTS get fw4 => setFontWeight(FontWeight.w400);
  ChainTS get fw5 => setFontWeight(FontWeight.w500);
  ChainTS get fw6 => setFontWeight(FontWeight.w600);
  ChainTS get fw7 => setFontWeight(FontWeight.w700);

  /// Font weight value : 1 ~ 9
  ChainTS fw(int weight) => setFontWeight(FontWeight.values[weight - 1]);

  /// Font Color
  ChainTS fc(Color color) => setColor(color);

  /// FontSize
  ChainTS fs(double size) => setFontSize(size);

  /// Font height
  ChainTS fh(double height) => setHeight(height);

  /// TextOverflow
  ChainTS fo(TextOverflow of) => setOverflow(of);

  /// letterSpacing
  ChainTS fls(double space) => setLetterSpacing(space);

  /// WordSpacing
  ChainTS fws(double space) => setWordSpacing(space);

  /// TextDecoration
  ChainTS ftd(TextDecoration decoration) => setDecoration(decoration);

  /// DecorationColor
  ChainTS ftdc(Color color) => setDecorationColor(color);

  /// TextDecorationStyle
  ChainTS ftds(TextDecorationStyle style) => setDecorationStyle(style);

  /// BackgroundColor
  ChainTS fbgc(Color color) => setBackgroundColor(color);

  /// FontStyle
  ChainTS ffs(FontStyle style) => setFontStyle(style);

  /// TextLeadingDistribution
  ChainTS fld(TextLeadingDistribution distribution) =>
      setLeadingDistribution(distribution);

  /// FontFamily
  ChainTS fff(String family) => setFontFamily(family);

  /// FontFamilyFallback
  ChainTS fffl(List<String> family) => setFontFamilyFallback(family);

  /// Locale
  ChainTS fl(Locale locale) => setLocale(locale);

  /// Foreground
  ChainTS ffg(Paint paint) => setForeground(paint);

  /// Background
  ChainTS fbg(Paint paint) => setBackground(paint);

  /// Shadows
  ChainTS fsh(List<Shadow> shadows) => setShadows(shadows);

  /// FontFeatures
  ChainTS fffs(List<FontFeature> features) => setFontFeatures(features);

  /// FontVariations
  ChainTS ffv(List<FontVariation> variations) => setFontVariations(variations);

  /// TextBaseline
  ChainTS ftb(TextBaseline baseline) => setTextBaseline(baseline);

  /// DecorationThickness
  ChainTS fdt(double thickness) => setDecorationThickness(thickness);

  /// DebugLabel
  ChainTS fdl(String label) => setDebugLabel(label);

  Color? _color;
  Color? _backgroundColor;
  double? _fontSize;
  FontWeight? _fontWeight;
  FontStyle? _fontStyle;
  double? _letterSpacing;
  double? _wordSpacing;
  TextBaseline? _textBaseline;
  double? _height;
  TextLeadingDistribution? _leadingDistribution;
  Locale? _locale;
  Paint? _foreground;
  Paint? _background;
  List<Shadow>? _shadows;
  List<FontFeature>? _fontFeatures;
  List<FontVariation>? _fontVariations;
  TextDecoration? _decoration;
  Color? _decorationColor;
  TextDecorationStyle? _decorationStyle;
  double? _decorationThickness;
  String? _debugLabel;
  String? _fontFamily;
  List<String>? _fontFamilyFallback;
  String? _package;
  TextOverflow? _overflow;

  ChainTS({
    TextStyle? style,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    if (style != null) chained(style);
    _color = color;
    _backgroundColor = backgroundColor;
    _fontSize = fontSize;
    _fontWeight = fontWeight;
    _fontStyle = fontStyle;
    _letterSpacing = letterSpacing;
    _wordSpacing = wordSpacing;
    _textBaseline = textBaseline;
    _height = height;
    _leadingDistribution = leadingDistribution;
    _locale = locale;
    _foreground = foreground;
    _background = background;
    _shadows = shadows;
    _fontFeatures = fontFeatures;
    _fontVariations = fontVariations;
    _decoration = decoration;
    _decorationColor = decorationColor;
    _decorationStyle = decorationStyle;
    _decorationThickness = decorationThickness;
    _debugLabel = debugLabel;
    _fontFamily = fontFamily;
    _fontFamilyFallback = fontFamilyFallback;
    _package = package;
    _overflow = overflow;
  }

// /// FontColor - example: ChainTS.cInt(0xff000000).st
// static ChainTS cInt(int value) => ChainTS(color: Color(value));
//
// /// FontColor - example: ChainTS.cHex("#000000").st
// static Color cHex(String rgbHex) {
//   if (rgbHex.startsWith("#")) rgbHex = rgbHex.substring(1).toUpperCase();
//   if (rgbHex.length == 6) rgbHex = "FF$rgbHex";
//   return Color(int.parse(rgbHex, radix: 16));
// }
//
// /// FontColor - example: ChainTS.rgb("255,255,255").st
// static Color rgb(String rgb) {
//   List<int> colors = rgb.split(",").map((e) => int.tryParse(e) ?? 0).toList();
//   if (colors.length != 3) return Colors.transparent;
//   return Color.fromARGB(255, colors[0], colors[1], colors[2]);
// }
}

// 扩展set方法、返回Styles、便于打点调用
extension FuncSet on ChainTS {
  /// set
  ChainTS setColor(color) {
    _color = color;
    return this;
  }

  ChainTS setBackgroundColor(backgroundColor) {
    _backgroundColor = backgroundColor;
    return this;
  }

  ChainTS setFontSize(fontSize) {
    _fontSize = fontSize;
    return this;
  }

  ChainTS setFontWeight(fontWeight) {
    _fontWeight = fontWeight;
    return this;
  }

  ChainTS setFontStyle(fontStyle) {
    _fontStyle = fontStyle;
    return this;
  }

  ChainTS setLetterSpacing(letterSpacing) {
    _letterSpacing = letterSpacing;
    return this;
  }

  ChainTS setWordSpacing(wordSpacing) {
    _wordSpacing = wordSpacing;
    return this;
  }

  ChainTS setTextBaseline(textBaseline) {
    _textBaseline = textBaseline;
    return this;
  }

  ChainTS setHeight(height) {
    _height = height;
    return this;
  }

  ChainTS setLeadingDistribution(leadingDistribution) {
    _leadingDistribution = leadingDistribution;
    return this;
  }

  ChainTS setLocale(locale) {
    _locale = locale;
    return this;
  }

  ChainTS setForeground(foreground) {
    _foreground = foreground;
    return this;
  }

  ChainTS setBackground(background) {
    _background = background;
    return this;
  }

  ChainTS setShadows(shadows) {
    _shadows = shadows;
    return this;
  }

  ChainTS setFontFeatures(fontFeatures) {
    _fontFeatures = fontFeatures;
    return this;
  }

  ChainTS setFontVariations(fontVariations) {
    _fontVariations = fontVariations;
    return this;
  }

  ChainTS setDecoration(decoration) {
    _decoration = decoration;
    return this;
  }

  ChainTS setDecorationColor(decorationColor) {
    _decorationColor = decorationColor;
    return this;
  }

  ChainTS setDecorationStyle(decorationStyle) {
    _decorationStyle = decorationStyle;
    return this;
  }

  ChainTS setDecorationThickness(decorationThickness) {
    _decorationThickness = decorationThickness;
    return this;
  }

  ChainTS setDebugLabel(debugLabel) {
    _debugLabel = debugLabel;
    return this;
  }

  ChainTS setFontFamily(fontFamily) {
    _fontFamily = fontFamily;
    return this;
  }

  ChainTS setFontFamilyFallback(fontFamilyFallback) {
    _fontFamilyFallback = fontFamilyFallback;
    return this;
  }

  ChainTS setOverflow(overflow) {
    _overflow = overflow;
    return this;
  }

  void chained(TextStyle style) {
    _color = style.color;
    _backgroundColor = style.backgroundColor;
    _fontSize = style.fontSize;
    _fontWeight = style.fontWeight;
    _fontStyle = style.fontStyle;
    _letterSpacing = style.letterSpacing;
    _wordSpacing = style.wordSpacing;
    _textBaseline = style.textBaseline;
    _height = style.height;
    _leadingDistribution = style.leadingDistribution;
    _locale = style.locale;
    _foreground = style.foreground;
    _background = style.background;
    _shadows = style.shadows;
    _fontFeatures = style.fontFeatures;
    _fontVariations = style.fontVariations;
    _decoration = style.decoration;
    _decorationColor = style.decorationColor;
    _decorationStyle = style.decorationStyle;
    _decorationThickness = style.decorationThickness;
    _debugLabel = style.debugLabel;
    _fontFamily = style.fontFamily;
    _fontFamilyFallback = style.fontFamilyFallback;
    _overflow = style.overflow;
  }

  TextStyle get st {
    return TextStyle(
      color: _color,
      backgroundColor: _backgroundColor,
      fontSize: _fontSize,
      fontWeight: _fontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _letterSpacing,
      wordSpacing: _wordSpacing,
      textBaseline: _textBaseline,
      height: _height,
      leadingDistribution: _leadingDistribution,
      locale: _locale,
      foreground: _foreground,
      background: _background,
      shadows: _shadows,
      fontFeatures: _fontFeatures,
      fontVariations: _fontVariations,
      decoration: _decoration,
      decorationColor: _decorationColor,
      decorationStyle: _decorationStyle,
      decorationThickness: _decorationThickness,
      debugLabel: _debugLabel,
      fontFamily: _fontFamily,
      fontFamilyFallback: _fontFamilyFallback,
      package: _package,
      overflow: _overflow,
    );
  }
}

/// Color Extension
extension ChainColorStyles on Color {
  ChainTS get fs6 => ChainTS(color: this, fontSize: 6);
  ChainTS get fs7 => ChainTS(color: this, fontSize: 7);
  ChainTS get fs8 => ChainTS(color: this, fontSize: 8);
  ChainTS get fs9 => ChainTS(color: this, fontSize: 9);
  ChainTS get fs10 => ChainTS(color: this, fontSize: 10);
  ChainTS get fs11 => ChainTS(color: this, fontSize: 11);
  ChainTS get fs12 => ChainTS(color: this, fontSize: 12);
  ChainTS get fs13 => ChainTS(color: this, fontSize: 13);
  ChainTS get fs14 => ChainTS(color: this, fontSize: 14);
  ChainTS get fs15 => ChainTS(color: this, fontSize: 15);
  ChainTS get fs16 => ChainTS(color: this, fontSize: 16);
  ChainTS get fs17 => ChainTS(color: this, fontSize: 17);
  ChainTS get fs18 => ChainTS(color: this, fontSize: 18);
  ChainTS get fs19 => ChainTS(color: this, fontSize: 19);
  ChainTS get fs20 => ChainTS(color: this, fontSize: 20);
  ChainTS get fs21 => ChainTS(color: this, fontSize: 21);
  ChainTS get fs22 => ChainTS(color: this, fontSize: 22);

  /// FontSize
  ChainTS fs(double size) => ChainTS(color: this, fontSize: size);
}
