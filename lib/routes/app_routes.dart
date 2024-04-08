import 'package:flutter/material.dart';
import '../presentation/homepage_screen/homepage_screen.dart';
import '../presentation/hotel_screen/hotel_screen.dart';
import '../presentation/room_image_screen/room_image_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homepageScreen = '/homepage_screen';

  static const String hotelScreen = '/hotel_screen';

  static const String roomImageScreen = '/room_image_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String logInScreen = '/log_in_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homepageScreen: (context) => HomepageScreen(),
    hotelScreen: (context) => HotelScreen(),
    roomImageScreen: (context) => RoomImageScreen(),
    signUpScreen: (context) => SignUpScreen(),
    logInScreen: (context) => LogInScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
