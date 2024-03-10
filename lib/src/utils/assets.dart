class AppAssets {
  static String _getPngImages(String asset) {
    return "assets/png/$asset.png";
  }

  static String _getSvgIconPath(String asset) {
    return "assets/svg/$asset.svg";
  }

  // for png images/logo
  static String blacklane = _getPngImages("blacklane");
  static String careem = _getPngImages("careem");
  static String map = _getPngImages("map");
  static String uber = _getPngImages("uber");
  static String yango = _getPngImages("yango");
  static String whatsapp = _getPngImages("whatsapp");

  // icons
  static String add = _getSvgIconPath("add");
  static String arrow = _getSvgIconPath("arrow");
  static String bus = _getSvgIconPath("bus");
  static String calendar = _getSvgIconPath("calendar");
  static String callBlack = _getSvgIconPath("call_black");
  static String callBlue = _getSvgIconPath("call_blue");
  static String callWhite = _getSvgIconPath("call_white");
  static String car = _getSvgIconPath("car");
  static String checking = _getSvgIconPath("checking");
  static String cloud = _getSvgIconPath("cloud");
  static String currency = _getSvgIconPath("currency");
  static String directionRight = _getSvgIconPath("direction_right");
  static String direction = _getSvgIconPath("direction");
  static String downArrow = _getSvgIconPath("down_arrow");
  static String electricCar = _getSvgIconPath("electric_car");
  static String flight = _getSvgIconPath("flight");
  static String friends = _getSvgIconPath("friends");
  static String indigo = _getSvgIconPath("indigo");
  static String me = _getSvgIconPath("me");
  static String metro = _getSvgIconPath("metro");
  static String premium = _getSvgIconPath("premium");
  static String search = _getSvgIconPath("search");
  static String time = _getSvgIconPath("time");
  static String twoWheeler = _getSvgIconPath("two_wheeler");
  static String upArrow = _getSvgIconPath("up_arrow");
  static String more = _getSvgIconPath("more");
}
