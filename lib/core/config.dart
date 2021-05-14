/*
 * @description 配置类
 * @author Qson
 * @date 2021-05-14 13:57:34
*/
class Config {
  static const bool DEBUG = !bool.fromEnvironment("dart.vm.product");

  static const PAGE_SIZE = 10;

  /// //////////////////////////////////////常量////////////////////////////////////// ///
  static const String API_KEY = "API_KEY";
  static const TOKEN_KEY = "token";
  static const USER_NAME_KEY = "user-name";
  static const PW_KEY = "user-pw";
  static const USER_BASIC_CODE = "user-basic-code";
  static const USER_INFO = "user-info";
  static const LANGUAGE_SELECT = "language-select";
  static const LANGUAGE_SELECT_NAME = "language-select-name";
  static const REFRESH_LANGUAGE = "refreshLanguageApp";
  static const THEME_COLOR = "theme-color";
  static const LOCALE = "locale";
  static const WXAppID = "wx8a7bd60279e2123c";

}

class Constant{
  static const String GET = "GET";
  static const String POST = "POST";
  static const String PUT = "PUT";
  static const String DELETE = "DELETE";

}
