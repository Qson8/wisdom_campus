import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wisdom_campus/core/base.dart';


/*
 * @description 尺寸工具类 含（屏幕适配，字体适配）
 *              size里面的 尺寸都是相对 设计稿的值 没有进行setWidth处理的是实际值
 * @author Qson
 * @date 2021-05-14 11:53:31
*/
class USize {
  //设计稿的值
  static const int defaultWidth = 375;
  static const int defaultHeight = 812;

  /// UI设计中手机尺寸 , px
  /// Size of the phone in UI Design , px
  late num uiWidthPx;
  late num uiHeightPx;

  /// 控制字体是否要根据系统的“字体大小”辅助选项来进行缩放。默认值为false。
  /// allowFontScaling Specifies whether fonts should scale to respect Text Size accessibility settings. The default is false.
  late bool allowFontScaling;

  late MediaQueryData _mediaQueryData;
  late double _screenWidth;
  late double _screenHeight;
  late double _pixelRatio;
  late double _statusBarHeight;
  late double _safeBottomHeight;
  late double _textScaleFactor;
  final double navBarHeight = 44;
  final double tabBarHeight = 50;

  USize(
    BuildContext context, {
    num width = defaultWidth,
    num height = defaultHeight,
    this.allowFontScaling = false,
  }) {
    uiWidthPx = width;
    uiHeightPx = height;
    allowFontScaling = allowFontScaling;

    MediaQueryData mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _statusBarHeight = mediaQuery.padding.top;
    _safeBottomHeight = _mediaQueryData.padding.bottom;
    _textScaleFactor = mediaQuery.textScaleFactor;
    logger.i('''
    屏幕信息:
    screenWidth:$screenWidth(dp), $screenWidthPx(px)
    screenHeight:$screenHeight(dp), $screenHeightPx(px)
    statusBarHeight: $statusBarHeight(dp)
    bottomBarHeight: $safeBottomHeight(dp)
    textScaleFactor: $textScaleFactor
    pixelRatio：$pixelRatio
    appBarHeight: $navBarHeight(dp),
    tabBarHeight: $tabBarHeight(dp),
    ''');
    setSize(_screenWidth, _screenHeight);
  }
  
  MediaQueryData get mediaQueryData => _mediaQueryData;

  /// 每个逻辑像素的字体像素数，字体的缩放比例
  /// The number of font pixels for each logical pixel.
  double get textScaleFactor => _textScaleFactor;

  /// 设备的像素密度
  /// The size of the media in logical pixels (e.g, the size of the screen).
  double get pixelRatio => _pixelRatio;

  /// 当前设备宽度dp
  double get screenWidth => _screenWidth;
  double get screenWidthDp => _screenWidth;

  /// 当前设备宽度 px
  double get screenWidthPx => _screenWidth * _pixelRatio;

  ///当前设备高度 dp
  ///The vertical extent of this size. dp
  double get screenHeight => _screenHeight;
  double get screenHeightDp => _screenHeight;

  /// 当前设备高度 px
  double get screenHeightPx => _screenHeight * _pixelRatio;

  /// 状态栏高度 dp
  /// The offset from the top
  double get statusBarHeight => _statusBarHeight;

  /// 底部安全区距离 dp
  /// The offset from the bottom.
  double get safeBottomHeight => _safeBottomHeight;

  /// 实际的dp与UI设计px的比例
  /// The ratio of the actual dp to the design draft px
  double get scaleWidth => _screenWidth / uiWidthPx;

  double get scaleHeight => _screenHeight / uiHeightPx;

  double get scaleText => scaleWidth > scaleHeight ? scaleWidth : scaleHeight;

  /// 根据UI设计的设备宽度适配
  /// 高度也可以根据这个来做适配可以保证不变形,比如你先要一个正方形的时候.
  /// Adapted to the device width of the UI Design.
  /// Height can also be adapted according to this to ensure no deformation ,
  /// if you want a square
  num setWidth(num width) => width * scaleWidth;

  /// 根据UI设计的设备高度适配
  /// 当发现UI设计中的一屏显示的与当前样式效果不符合时,
  /// 或者形状有差异时,建议使用此方法实现高度适配.
  /// 高度适配主要针对想根据UI设计的一屏展示一样的效果
  /// Highly adaptable to the device according to UI Design
  /// It is recommended to use this method to achieve a high degree of adaptation
  /// when it is found that one screen in the UI design
  /// does not match the current style effect, or if there is a difference in shape.
  num setHeight(num height) => height * scaleHeight;

  ///字体大小适配方法
  ///@param [fontSize] UI设计上字体的大小,单位px.
  ///Font size adaptation method
  ///@param [fontSize] The size of the font on the UI design, in px.
  ///@param [allowFontScaling]
  num setSp(num fontSize, {bool? allowFontScalingSelf}) =>
      allowFontScalingSelf == null
          ? (allowFontScaling
              ? (fontSize * scaleText)
              : ((fontSize * scaleText) / _textScaleFactor))
          : (allowFontScalingSelf
              ? (fontSize * scaleText)
              : ((fontSize * scaleText) / _textScaleFactor));

  // 预设转换单位
  double padding = 16;
  double middlePadding = 12;
  double smallPadding = 8;
  double backMargin = 19;

  double lineSize = 0.5;

  double bigLargeTextSize = 42;
  double midlargeTextSize = 28;
  double largeTextSize = 22;
  double bigTextSize = 20;
  double middleTextWhiteSize = 18;
  double normalTextSize = 16;
  double smallTextSize = 14;
  double minTextSize = 12;
  double littleTextSize = 10;

  /// 方便使用
  get font42 => bigLargeTextSize;
  get font28 => midlargeTextSize;
  get font22 => largeTextSize;
  get font20 => bigTextSize;
  get font18 => middleTextWhiteSize;
  get font16 => normalTextSize;
  get font14 => smallTextSize;
  get font12 => minTextSize;
  get font10 => littleTextSize;
  final double font11 = 11;
  final double font13 = 13;
  final double font15 = 15;

  final double spacing = 10; // 间距
  final double emptyTopMargin = 100; // 空图标距离导航栏的高度
  final double busyTopMargin = 200; // 加载动画

  //和设计图等比例的尺寸重复避免计算
  void setSize(width, height) {
    padding = setWidth(padding).toDouble();
    smallPadding = setWidth(smallPadding).toDouble();
    middlePadding = setWidth(middlePadding).toDouble();
    backMargin = setWidth(backMargin).toDouble();
  }

  /// 一级页面内容高度
  double get mainContentHeight =>
      screenHeight -
      navBarHeight -
      statusBarHeight -
      safeBottomHeight -
      tabBarHeight;

  /// 二级页面内容高度
  double get subContentHeight =>
      mainContentHeight + safeBottomHeight + tabBarHeight;
}